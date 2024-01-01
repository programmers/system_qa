#!/bin/bash

echo "kubectl can be a shared script!!!"

#sys_check /usr/local/bin/kubectl && exit 0

sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/