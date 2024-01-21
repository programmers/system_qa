#!/bin/bash

sys_check /usr/pgadmin4 && exit 0

sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add

echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" | sudo tee /etc/apt/sources.list.d/pgadmin4.list

sudo apt-get update -y

sudo apt-get install -y pgadmin4