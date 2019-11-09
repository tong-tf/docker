使用说明


# Dockerfile_aosp1404
此文件用来生成ubuntu14.04版本的android编译环境， 可编译6.0,7.0,8.0,9.0

## 普通用户运行镜像
docker run -it --rm  -v /home/tj/code/:/home/aosp tong/aosp:1404 bash

## roo用户运行镜像
docker run -it --rm -u root -v /home/tj/code/:/home/aosp tong/aosp:1404 bash

## 编译镜像
docker build -t tong/aosp:1404 -f Dockerfile_aosp1404 .


# Dockerfile_aosp1604
此文件用来生成ubuntu16.04版本的android编译环境， 可编译7.0,8.0,9.0

## 普通用户运行镜像
docker run -it --rm -v /home/tj/code/:/home/aosp tong/aosp:1604 bash

## roo用户运行镜像
docker run -it -u root --rm -v /home/tj/code/:/home/aosp tong/aosp:1604 bash

## 编译镜像
docker build -t tong/aosp:1604 -f Dockerfile_aosp1604 .

