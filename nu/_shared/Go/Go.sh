#!/bin/bash

echo "HEY DO A TRAP HERE"

source "$proj/check" && check "/usr/local/go/bin" && return 0

wget https://golang.org/dl/go1.16.4.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz

echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc

source ~/.bashrc