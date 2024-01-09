#!/bin/bash

sys_check /usr/local/bin/kind && exit 0

sudo curl -Lo /usr/local/bin/kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64

sudo chmod +x /usr/local/bin/kind