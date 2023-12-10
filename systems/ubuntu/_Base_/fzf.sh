#!/bin/bash

check "~/usr/.fzf/bin" && return 0

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install --all

echo 'export PATH="$PATH:~/.fzf/bin"' >> ~/.bashrc

source ~/.bashrc