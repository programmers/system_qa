#!/bin/bash

check "/usr/local/bin/aws" && return 0

trap "rm awscliv2.zip" EXIT

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install
