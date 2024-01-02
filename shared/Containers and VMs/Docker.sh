#!/bin/bash

sys_check /usr/bin/docker && exit 0

trap "rm -rf get-docker.sh" EXIT

curl -fsSL https://get.docker.com -o get-docker.sh

sudo chmod +x get-docker.sh

./get-docker.sh

sudo systemctl start docker
sudo systemctl enable docker