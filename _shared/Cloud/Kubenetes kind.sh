#!/bin/bash

source "$proj/check" && check "/usr/local/bin/kind" && return 0

trap "rm -rf kind" EXIT

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/