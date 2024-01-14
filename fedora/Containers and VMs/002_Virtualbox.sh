#!/bin/bash

sys_check /usr/bin/virtualbox && exit 0

# todo should be kernel modules in base...
sudo dnf install -y @development-tools kernel-headers kernel-devel dkms

echo "[virtualbox]
name=Fedora \$releasever - \$basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/\$releasever/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox_2016.asc" | sudo tee /etc/yum.repos.d/virtualbox.repo

sudo dnf install -y VirtualBox-7.0