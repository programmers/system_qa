#!/bin/bash

sys_check /usr/bin/dbeaver-ce && exit 0

trap "rm dbeaver-ce-latest-stable.x86_64.rpm" EXIT

wget https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm

sudo rpm -Uvh ./dbeaver-ce-latest-stable.x86_64.rpm