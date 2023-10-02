#!/bin/bash

source /home/mvim/repo/nu/src/checks/lookup_general_package.sh


if lookup_general_package "/usr/bin/ant"; then exit; fi

sudo apt-get install -y ant