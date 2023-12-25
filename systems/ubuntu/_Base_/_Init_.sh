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
                        libcurl4-openssl-dev \
                        xauth \
                        x11-apps


# umake
sudo add-apt-repository -y ppa:lyzardking/ubuntu-make
sudo apt-get update -y
sudo apt-get install -y ubuntu-make

# Need Python for pip installs 
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install -y python3.10
sudo apt-get install -y python3.10-venv
sudo apt-get install -y python-is-python3
curl https://bootstrap.pypa.io/get-pip.py | sudo python


# Need Node (via npm) for global npm installs
if ! command -v nvm &>/dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.bashrc
    nvm install 20.10.0
    nvm alias default 20.10.0
fi

# VSCode is our "base" editor and will come with many extensions
if ! command -v code &>/dev/null; then
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt-get -y update
    sudo apt-get install -y code
fi

sudo chown -R "$user" /usr/local/bin

touch /tmp/progsys.log
chmod 664 /tmp/progsys.log
