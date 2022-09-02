#!/bin/bash

curl -sL https://pyenv.run | bash

cat << 'EOF' >> $HOME/.bashrc
export PATH="$PATH:$HOME/.pyenv/bin"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF