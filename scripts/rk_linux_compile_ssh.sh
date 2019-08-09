#!/bin/bash

SSH_PORT=13333
SHARE_DIR=/home/tj/code/backup/linux
echo "Info:"
echo "SSH_PORT=$SSH_PORT"
echo "SHARE_DIR=$SHARE_DIR"
echo "use ssh tj@127.0.0.1 -p${SSH_PORT} to login"

docker run -d -p${SSH_PORT}:22 \
    --mount type=bind,source=${SHARE_DIR},target=${SHARE_DIR} \
    tong/rk_linux_compile:sudo /usr/sbin/sshd -D
