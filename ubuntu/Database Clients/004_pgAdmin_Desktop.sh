#!/bin/bash

wget --quiet -O - https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add

sudo sh -c 'echo "deb http://deb.debian.org/debian buster-backports main" > /etc/apt/sources.list.d/pgadmin4.list'

sudo apt-get -y update
sudo apt-get -y install pgadmin4-desktop