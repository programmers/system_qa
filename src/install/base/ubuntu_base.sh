#!/bin/bash

if [ -e /etc/ansible/base_is_setup ]
then
    exit 0
fi

echo "Updating package indexes and installing base packages..."
apt-get update -y

apt-get install  -y software-properties-common \
                        apt-transport-https \
                        build-essential \
                        ca-certificates \
                        curl \
                        wget \
                        git
 
# Many playbooks depend on Python. While managers and other packages are
# installed in the Python ecosystem, a user may opt out but we still need a
# base Python install to use in many places.
apt-add-repository -y ppa:deadsnakes/ppa
apt-get update -y
apt-get install -y python3.10 \
                       python3-pip \
                       python3-dev \
                       python3-setuptools \
                       python3-distutils \
                       python3-wheel \
                       python3-tk \
                       python-is-python3

curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10

apt-add-repository -y ppa:ansible/ansible
apt-get update -y
apt-get install -y ansible

python -m pip install inquirer pyyaml # &> /dev/null

# TODO: This is not the best idea...
home_user=$(ls /home)
home_user_dir="/home"/$home_user
project_dir=$home_user_dir"/.progsys"

# TODO: use an official proj structure to store these
cat > /etc/ansible/vars.yml <<EOF
---
os: ubuntu
home_user: $home_user
home_user_dir: $home_user_dir
project_dir: $project_dir
EOF

# TODO: This is not the best idea...
if [[ ! -f /etc/ansible/base_is_setup ]]; then
cat >> /etc/ansible/ansible.cfg <<EOF
[defaults]
library = $project_dir/src/ansible/modules/
EOF
fi

touch /etc/ansible/base_is_setup