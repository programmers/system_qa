#!/bin/bash

sys_check /usr/local/go/bin && exit 0

trap "rm /usr/local/go/bin" EXIT

wget https://golang.org/dl/go1.16.4.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz

echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc

source ~/.bashrc