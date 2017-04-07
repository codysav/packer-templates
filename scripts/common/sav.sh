#!/bin/sh

set -e
set -x

sudo groupadd savadmin
sudo useradd -d /home/savadmin -s /bin/bash -g savadmin -G sudo -mk /etc/skel -p ${SAVADMIN} savadmin
