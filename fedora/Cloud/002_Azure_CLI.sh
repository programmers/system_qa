#!/bin/bash

sys_check /usr/bin/az && exit 0

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo -e "[azure-cli]\nname=Azure CLI\nbaseurl=https://packages.microsoft.com/yumrepos/azure-cli\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/azure-cli.repo

sudo dnf install -y azure-cli
