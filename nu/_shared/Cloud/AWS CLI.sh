#!/bin/bash

source "$proj/check" && check "/usr/local/bin/aws" && return 0

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install
echo $?
