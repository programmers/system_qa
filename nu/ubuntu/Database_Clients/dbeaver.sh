#!/bin/bash

trap "rm -rf dbeaver-ce.deb" EXIT

wget -O dbeaver-ce.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

sudo dpkg -i dbeaver-ce.deb

# TODO: why do I have to do f
sudo apt-get -y install -f


