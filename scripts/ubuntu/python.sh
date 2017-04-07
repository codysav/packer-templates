#!/bin/bash

set -e
set -x

sudo ln -sf /usr/bin/python3.5 /usr/bin/python
sudo apt-get install -yf python3-pip
