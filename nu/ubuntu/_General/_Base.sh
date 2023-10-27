#!/bin/bash

sudo apt-get update -y


#JUST CALL STUFF IN SHARED OR WHATEVER
#JUST CALL STUFF IN SHARED OR WHATEVER
#JUST CALL STUFF IN SHARED OR WHATEVER
    # state="required"

# General dependencies
sudo apt-get install -y curl \
                        ca-certificates \
                        apt-transport-https ca-certificates \
                        software-properties-common \
                        gnupg \
                        autoconf \
                        unzip \
                        build-essential \
                        gpg \
                        git \
                        zlib1g-dev \
                        libreadline-dev \
                        libssl-dev \
                        libcurl4-openssl-dev

# umake
sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo apt-get update -y
sudo apt-get install -y ubuntu-make

# Need Python for pip installs 
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install -y python3.10
sudo apt-get install -y python-is-python3
curl https://bootstrap.pypa.io/get-pip.py | sudo python

# Need Node for global npm installs
curl -sL https://deb.nodesource.com/setup_current.x | bash
apt-get install -y nodejs

# VSCode is our "base" editor and will come with many extensions
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get -y update
sudo apt-get install -y code