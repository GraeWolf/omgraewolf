#!/usr/bin/env bash

set eEo pipefail

sudo dnf install -y udev automount udisks

sudo tee /etc/systemd/system/usbmount.service > /dev/null << 'EOF'
[Unit]
Description=Automount USB

[Service]
ExecStart=/bin/bash -c 'udevadm settle && /usr/bin/udisksctl mount --block-device /dev/disk/by-id/usb-* --no-user-interaction'

[Install]
WantedBy=multi-user.target

EOF
sudo systemctl enable usbmount.service
sudo systemctl start usbmount.service
