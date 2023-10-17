#!/bin/bash

source "$proj/check" && check "$HOME/.rvm" && return 0

curl -sSL https://get.rvm.io | bash

source $HOME/.rvm/scripts/rvm

rvm install ruby --latest

rvm use ruby --latest

gem install bundler

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc