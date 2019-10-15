#!/bin/bash

APP_NAME=nginx
APP_HOME=~/workspace/$APP_NAME
if [ ! -e $APP_HOME ] ; then
    echo "No $APP_HOME found, exit"
    mkdir $APP_HOME
fi
cd $APP_HOME
# kill running
app=$(docker ps | grep $APP_NAME)
if [ -n "$app" ];then
	echo "Kill running"
	docker kill $APP_NAME
fi
docker rm $(docker ps -a | egrep -w "${APP_NAME}\$"| cut -d' ' -f1)
docker run -d  -p 7888:80  --name $APP_NAME \
	-v $(pwd)/log:/var/log/nginx\
	-v $(pwd)/conf:/etc/nginx/conf.d\
	-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf\
	-v $(pwd)/html:/usr/share/nginx/html\
	nginx
cd -