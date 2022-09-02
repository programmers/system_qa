#!/bin/bash
trap "rm install.sh" EXIT

# UNTESTED/not included yet

# NOTICE: Anaconda needs >=16 GB RAM, >= 300 GB Storage, and 2 modern CPUs:
# https://docs.anaconda.com/anaconda-enterprise/system-requirements/

curl -sL https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh -o install.sh
bash install.sh -b -p $HOME/.anaconda

cat << 'EOF' >> $HOME/.bashrc
export PATH="$PATH:$HOME/.anaconda/bin"
EOF