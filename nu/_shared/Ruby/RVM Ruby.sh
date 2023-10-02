#!/bin/bash

source "$proj/check" && check "$HOME/.rvm" && return 0

\curl -sSL https://get.rvm.io | bash

source $HOME/.rvm/scripts/rvm

# TODO: don't hardcode
rvm install ruby "3.1.3"

rvm use ruby "3.1.3"

gem install bundler

# TODO: awful idea
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.zshrc