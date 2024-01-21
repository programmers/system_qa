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


# The following are needed as general dependencies

if ! command -v python3.10 &>/dev/null; then
    sudo dnf install -y python3.10 \
                        python3.10-devel \
                        python-is-python3

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

#node_version=$(node -v | cut -c 2-) -------- is this needed? preinstall?
#if [ "${node_version%%.*}" -lt 21 ]; then
if ! command -v node &>/dev/null; then
    curl -sL https://rpm.nodesource.com/setup_21.x | bash -
    sudo dnf install -y nodejs
    echo -e "export NPM_CONFIG_PREFIX=~/.npm-global\nexport PATH=\$PATH:~/.npm-global/bin" >> ~/.bashrc # https://stackoverflow.com/a/41395398
fi

if ! command -v snap &>/dev/null; then
    sudo dnf install snapd
    sudo systemctl enable --now snapd.socket
fi

# VSCode is our "base" editor for the ecosystems with many extensions
if ! command -v code &>/dev/null; then
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    sudo dnf install -y code
fi

touch /tmp/progsys.log
chmod 664 /tmp/progsys.log