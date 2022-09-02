#!/bin/bash

curl -sL https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64 -o kind

chmod +x ./kind
mv ./kind /usr/local/bin/kind