#!/bin/bash 

sys_check ~/.vim_runtime/amix.lock && exit 0

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
. ~/.vim_runtime/install_awesome_vimrc.sh

touch ~/.vim_runtime/amix.lock