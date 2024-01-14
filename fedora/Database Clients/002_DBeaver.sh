#!/bin/bash

sys_check /usr/bin/dbeaver-ce && exit 0

sudo dnf install -y https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm