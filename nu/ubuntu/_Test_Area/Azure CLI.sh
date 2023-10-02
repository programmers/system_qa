#!/bin/bash

source /home/mvim/repo/nu/src/checks/lookup_general_package.sh

if lookup_general_package "/usr/bin/az"; then exit; fi

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash