#!/bin/bash

sys_check /usr/bin/az && exit 0

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
