#!/bin/bash

sys_check /usr/bin/qemu-kvm && exit 0

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