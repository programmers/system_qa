#!/bin/bash

curl -sL https://raw.githubusercontent.com/phpenv/phpenv-installer/master/bin/phpenv-installer | bash

cat << 'EOF' >> $HOME/.bashrc
export PATH="$PATH:$HOME/.phpenv/bin"
eval "$(phpenv init -)"
EOF