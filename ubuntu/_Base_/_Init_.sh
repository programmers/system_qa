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


# Need Python for pip installs 
if ! command -v python3.10 &>/dev/null; then
    sudo add-apt-repository -y ppa:deadsnakes/ppa
    sudo apt-get update -y
    sudo apt-get install -y python3.10
    sudo apt-get install -y python3.10-venv
    sudo apt-get install -y python3.10-dev
    sudo apt-get install -y python-is-python3
    curl https://bootstrap.pypa.io/get-pip.py | sudo python
fi

if ! command -v docker &>/dev/null; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo chmod +x get-docker.sh
    ./get-docker.sh
    rm -rf get-docker.sh
    sudo systemctl start docker
    sudo systemctl enable docker
fi

# Need Node (via npm) for global npm installs
if ! command -v nvm &>/dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.bashrc
    source ~/.bashrc
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



