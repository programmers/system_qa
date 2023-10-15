#!/bin/bash

source "$proj/check" && check "$HOME/.nvm" && return 0

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc


echo "you can't source mid script - must open up another shell or something"

source ~/.bashrc

echo "hey figure out how to get the latest release dynamically"

nvm install 18
nvm use 18 