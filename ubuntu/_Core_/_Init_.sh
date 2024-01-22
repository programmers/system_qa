#!/bin/bash

user=$(whoami)

sudo apt-get update -y

# General dependencies
sudo apt-get install -y curl \
                        ca-certificates \
                        apt-transport-https ca-certificates \
                        software-properties-common \
                        gnupg \
                        autoconf \
                        unzip \
                        zip \
                        build-essential \
                        gpg \
                        git \
                        tree \
                        zlib1g-dev \
                        libreadline-dev \
                        libssl-dev \
                        libcurl4-openssl-dev

# The following are needed as general dependencies

# ppa:deadsnakes/ppa has been erring a lot
sudo apt-get install -y python3.11-venv \
                        python3.11-dev \
                        python-is-python3


if ! command -v docker &>/dev/null; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo chmod +x get-docker.sh
    ./get-docker.sh
    rm -rf get-docker.sh
    sudo systemctl start docker
    sudo systemctl enable docker
fi

if ! command -v node &>/dev/null; then
    curl -sL https://deb.nodesource.com/setup_21.x | sudo -E bash -
    sudo apt-get install -y nodejs
    echo -e "export NPM_CONFIG_PREFIX=~/.npm-global\nexport PATH=\$PATH:~/.npm-global/bin" >> ~/.bashrc # https://stackoverflow.com/a/41395398
fi

# VSCode is our "base" editor for the ecosystems with many extensions
if ! command -v code &>/dev/null; then
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt-get -y update
    sudo apt-get install -y code
fi

sudo touch /var/log/progsys.log
sudo chmod 777 /var/log/progsys.log