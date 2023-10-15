#!/bin/bash

echo "HEY DO A TRAP HERE"

source "$proj/check" && check "/usr/bin/terraform" && return 0

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg -y --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# todo: this is hardcoded
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com jammy main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt-get -y install terraform