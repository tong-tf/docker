#!/bin/bash

usage()
{
	echo "run.sh 1404|1604"
	echo "1404 to build ubuntu1404"
	echo "1604 to build ubuntu1604"
}

case $1 in
	1404)
		docker build -t tong/aosp:1404 -f Dockerfile_aosp1404 .
		;;
	1604)
		docker build -t tong/aosp:1604 -f Dockerfile_aosp1604 .
		;;
	*)
		usage
		;;
esac





