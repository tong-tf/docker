FROM ubuntu:14.04 as aosp1404
USER root
RUN groupadd -g 1001 tj \
    && useradd -d "/home/aosp" -u 1001 -g 1001 -m -s /bin/bash tj
COPY sources.list.trusty  /etc/apt/sources.list
RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf build-essential \
	zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
	lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
	libgl1-mesa-dev libxml2-utils xsltproc unzip  bc liblz4-tool rsync openjdk-8-jdk
WORKDIR /home/aosp
USER tj


FROM ubuntu:16.04 as aosp1604
USER root
RUN groupadd -g 1001 tj \
    && useradd -d "/home/aosp" -u 1001 -g 1001 -m -s /bin/bash tj
COPY sources.list.xenial  /etc/apt/sources.list
RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf build-essential \
	zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
	lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
	libgl1-mesa-dev libxml2-utils xsltproc unzip  bc liblz4-tool rsync openjdk-8-jdk

WORKDIR /home/aosp
USER tj