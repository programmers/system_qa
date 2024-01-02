#!/bin/bash

sys_check ~/.config/emacs/bin/doom && exit 0

sudo dnf install -y emacs

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs

yes | ~/.config/emacs/bin/doom install