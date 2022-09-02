#!/bin/bash
trap "rm install.sh" EXIT

curl -sL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o install.sh
chmod +x install.sh
./install.sh -b -p $HOME/.miniconda

cat << 'EOF' >> $HOME/.bashrc
export PATH="$PATH:$HOME/.miniconda/bin"
EOF
