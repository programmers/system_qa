#!/bin/bash

check /usr/local/bin/thefuck && exit 0

sudo -H pip install thefuck

curl -sLf https://spacevim.org/install.sh | bash