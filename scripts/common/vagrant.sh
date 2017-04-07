#!/bin/sh

set -e
set -x

if [ "$PACKER_BUILDER_TYPE" != "virtualbox-iso" ]; then
  exit 0
fi

date | sudo tee /etc/vagrant_box_build_time

mkdir -p ~/.ssh
curl -fsSLo ~/.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
chmod 700 ~/.ssh/
chmod 600 ~/.ssh/authorized_keys
