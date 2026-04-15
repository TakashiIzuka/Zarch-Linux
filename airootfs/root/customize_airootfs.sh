#!/bin/bash

pacman-key --init
pacman-key --populate archlinux
pacman -Sy


# Fix Calamares yaml-cpp ABI mismatch
if [ -f /usr/lib/libyaml-cpp.so.0.9 ]; then
    ln -sf /usr/lib/libyaml-cpp.so.0.9 /usr/lib/libyaml-cpp.so.0.8
fi


systemctl enable NetworkManager.service
systemctl enable systemd-timesyncd.service
systemctl enable systemd-resolved.service

reflector --country Indonesia --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
