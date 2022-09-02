#!/bin/bash
trap "rm -rf aws_installer.zip" EXIT

curl -sL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o aws_installer.zip
unzip aws_installer.zip
bash ./aws/install