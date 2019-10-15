#!/bin/bash

GITLAB_HOME=~/workspace/gitlab
if [ ! -e $GITLAB_HOME ] ; then
    echo "No $GITLAB_HOME found, exit"
    exit 1
else
    cd $GITLIB_HOME
fi

# kill running
gitlab=$(docker ps | grep gitlab)
if [ -n "$gitlab" ];then
	echo "Kill running"
	docker kill $gitlab
fi
docker rm $(docker ps -a | egrep -w 'gitlab$'| cut -d' ' -f1)
docker run -d  -p 4433:443 -p 7888:80 -p 2222:22 --name gitlab \
	-v config:/etc/gitlab  \
	-v logs:/var/log/gitlab \
	-v data:/var/opt/gitlab \
	gitlab/gitlab-ce


