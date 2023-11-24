#!/bin/bash

source "$proj/check" && check "/usr/bin/kubectl" && return 0

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt update -y

sudo apt install -y kubectl