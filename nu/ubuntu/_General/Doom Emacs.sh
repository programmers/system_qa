#!/bin/bash

sudo apt-get install -y emacs

source "$proj/check" && check "$HOME/.config/emacs/bin/doom" && return 0

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs

yes | ~/.config/emacs/bin/doom -y install