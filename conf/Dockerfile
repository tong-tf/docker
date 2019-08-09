FROM tong/rk_linux_compile:ssh
MAINTAINER tongjun<tj_wust@163.com>
LABEL Description="Add root passwd and user tj to sudo group"  Version="1.0"
RUN echo root:123456 | chpasswd  && \
    usermod -aG sudo tj && \
    apt-get install -y sudo && \
    apt-get autoremove --purge
