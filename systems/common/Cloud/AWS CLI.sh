#!/bin/bash
echo 123

ps_check "/usr/local/bin/aws" && return 0
return

trap "rm awscliv2.zip" EXIT

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install
echo $?
