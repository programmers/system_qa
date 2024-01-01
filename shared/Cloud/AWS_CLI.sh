#!/bin/bash

sys_check /usr/local/bin/aws && exit 0

trap "rm awscliv2.zip aws" EXIT

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install
