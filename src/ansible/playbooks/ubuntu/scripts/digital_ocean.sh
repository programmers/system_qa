#!/bin/bash

curl -sL https://github.com/digitalocean/doctl/releases/download/v1.64.0/doctl-1.64.0-linux-amd64.tar.gz | tar -zx

mv doctl /usr/local/bin/