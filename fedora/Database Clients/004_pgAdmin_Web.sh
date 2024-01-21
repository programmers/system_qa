#!/bin/bash

sys_check /usr/pgadmin4 && exit 0

sudo dnf install -y https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/pgadmin4-fedora-repo-1-1.noarch.rpm
sudo dnf install -y pgadmin4

sudo systemctl start pgadmin4
sudo systemctl enable pgadmin4