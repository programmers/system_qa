#!/bin/bash

source "$proj/check" && check "/usr/local/bin/thefuck" && return 0

sudo -H pip install thefuck

curl -sLf https://spacevim.org/install.sh | bash