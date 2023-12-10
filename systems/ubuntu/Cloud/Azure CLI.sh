#!/bin/bash

check "/usr/bin/az" && return 0

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
