#!/bin/bash

sys_check /usr/bin/qemu-kvm && exit 0

sudo dnf install -y qemu-kvm \
                   libvirt-daemon \
                   libvirt-client \
                   bridge-utils \
                   virt-manager \
                   virt-viewer

sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER

sudo systemctl enable libvirtd
sudo systemctl start libvirtd
