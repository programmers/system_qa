#!/bin/bash

sys_check ~/.phpenv && exit 0

git clone https://github.com/phpenv/phpenv.git ~/.phpenv

echo 'export PATH="$HOME/.phpenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(phpenv init -)"' >> ~/.bashrc

source ~/.bashrc