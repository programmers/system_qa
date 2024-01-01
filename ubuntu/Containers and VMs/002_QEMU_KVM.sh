#!/bin/bash

echo "needs checked"

sudo apt-get update -y

sudo apt-get install -y qemu-kvm \
                        libvirt-daemon-system \
                        libvirt-clients \
                        bridge-utils \
                        virt-manager \
                        virt-viewer

sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER

sudo systemctl enable libvirtd
sudo systemctl start libvirtd