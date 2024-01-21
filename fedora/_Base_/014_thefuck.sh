#!/bin/bash

sys_check /usr/bin/thefuck && exit 0

sudo dnf -y install thefuck

echo 'eval "$(thefuck --alias)"' >> ~/.bashrc