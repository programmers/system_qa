#!/bin/bash

source "$proj/check" && check "/usr/bin/dbeaver" && return 0

trap "rm -rf dbeaver-ce.deb" EXIT

wget -O dbeaver-ce.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

sudo dpkg -i dbeaver-ce.deb

# TODO: why do I have to do f here???????????
sudo apt-get -y install -f


