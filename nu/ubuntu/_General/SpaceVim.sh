#!/bin/bash

sudo apt-get install -y vim

source "$proj/check" && check "$HOME/.SpaceVim" && return 0

curl -sLf https://spacevim.org/install.sh | bash