#!/bin/bash

sys_check /usr/bin/thefuck && exit 0

sudo apt-get -y install thefuck

echo 'eval "$(thefuck --alias)"' >> ~/.bashrc