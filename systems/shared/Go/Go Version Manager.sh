#!/bin/bash

check "~/.gvm" && return 0

git clone https://github.com/moovweb/gvm.git ~/.gvm

echo "source ~/.gvm/scripts/gvm" >> ~/.bashrc

source ~/.bashrc

gvm install go1.20.7 --binary

gvm use go1.20.7 --default
