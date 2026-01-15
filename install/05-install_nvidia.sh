#!/usr/bin/env bash

set -eEo pipefail


# Checking if kernels headers exist and if not instll them

if sudo dnf list kernel-headers &>/dev/null; then
        echo "linux-headers are installed"
else
        echo "linux-headers not installed."
        echo "installing now"
        sudo dnf install -y kernel-headers
fi

sudo dnf config-manager setopt rolling-x86_64-extra.enabled=1
sudo dnf config-manager setopt rolling-x86_64-restricted.enabled=1
sudo dnf config-manager setopt rolling-x86_64-non-free.enabled=1

# Installing the Nvidia drivers
sudo dnf install -y nvidia nvidia-kmod-open-desktop --refresh

sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-resume.service

echo force_drivers+=\" nvidia nvidia_modeset nvidia_uvm nvidia_drm \" | sudo tee -a /etc/dracut.conf.d/nv.conf > /dev/null

sudo dracut --force --regenerate-all
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
