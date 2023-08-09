#!/bin/bash

sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add -
echo "deb https://www.pgadmin.org/download/repo/ubuntu/ $(lsb_release -cs) pgadmin4 main" | sudo tee /etc/apt/sources.list.d/pgadmin4.list

sudo apt-get update -y
sudo apt-get install -y pgadmin4-web install pgadmin4-desktop
