#!/bin/bash

sudo apt-get update -y

# General dependencies
sudo apt-get install -y curl \
                        ca-certificates \
                        apt-transport-https ca-certificates \
                        software-properties-common \
                        gnupg \
                        autoconf \
                        build-essential \
                        gpg \
                        git \
                        vim


# Need Python for pip installs 
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install -y python3.10

# Need Node for global npm installs
curl -sL https://deb.nodesource.com/setup_current.x | bash
apt-get install -y nodejs

# VSCode is our "base" editor and will come with many extensions
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update -y
sudo apt-get install code -y

# Make sure we have snap
if [ -f "/etc/apt/preferences.d/nosnap.pref" ]; then
    sudo systemctl start snapd
    sudo systemctl enable snapd
    sudo apt-get install -y snapd
    sudo rm /etc/apt/preferences.d/nosnap.pref
fi
