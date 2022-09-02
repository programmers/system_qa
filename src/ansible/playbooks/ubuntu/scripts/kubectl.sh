#!/bin/bash

curl -sL "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o kubectl

chmod +x kubectl
mv kubectl /usr/local/bin/