#!/bin/bash

sys_check ~/usr/.fzf/bin && exit 0

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install --all

echo 'export PATH="$PATH:~/.fzf/bin"' >> ~/.bashrc