#!/bin/bash

source /home/mvim/repo/nu/src/checks/lookup_general_package.sh

if lookup_general_package "/usr/bin/docker"; then exit; fi

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER

sudo systemctl enable docker
sudo systemctl start docker