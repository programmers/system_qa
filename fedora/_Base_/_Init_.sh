#!/bin/bash

user=$(whoami)

sudo dnf update -y

# General dependencies
sudo dnf install -y curl \
                   ca-certificates \
                   dnf-plugins-core \
                   gnupg \
                   autoconf \
                   unzip \
                   zip \
                   @development-tools \
                   gpg \
                   git \
                   tree \
                   zlib-devel \
                   readline-devel \
                   openssl-devel \
                   libcurl-devel

# Need Python for pip installs
if ! command -v python3.10 &>/dev/null; then
    sudo dnf install -y python3.10
    sudo dnf install -y python3.10-devel
    sudo dnf install -y python-is-python3
    curl https://bootstrap.pypa.io/get-pip.py | sudo python3
fi

if ! command -v docker &>/dev/null; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo chmod +x get-docker.sh
    ./get-docker.sh
    rm -rf get-docker.sh
    sudo systemctl start docker
    sudo systemctl enable docker
fi

# Need Node for global npm installs - nvm later
if ! command -v node &>/dev/null; then
    curl -sL https://rpm.nodesource.com/setup_21.x | bash -
    sudo dnf install -y nodejs
fi

# VSCode is our "base" editor and will come with many extensions
if ! command -v code &>/dev/null; then
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    sudo dnf install -y code
fi

if ! command -v snap &>/dev/null; then
    sudo dnf install snapd
    sudo systemctl enable --now snapd.socket
fi

sudo chown -R "$user" /usr/local/bin

touch /tmp/progsys.log
chmod 664 /tmp/progsys.log
