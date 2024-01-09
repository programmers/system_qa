#!/bin/bash

sys_check /usr/bin/dbeaver && exit 0

trap "rm -rf dbeaver-ce.deb" EXIT

wget -O dbeaver-ce.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

sudo dpkg -i dbeaver-ce.deb