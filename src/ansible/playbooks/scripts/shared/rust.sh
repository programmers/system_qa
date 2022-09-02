#!/bin/bash

# Community accepted approach to perform a silent install
curl https://sh.rustup.rs -sSf | sh -s -- -y

cat << 'EOF' >> $HOME/.bashrc
export PATH="$PATH:$HOME/.cargo/bin"
EOF