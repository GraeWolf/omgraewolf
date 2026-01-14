#!/usr/bin/env bash

set -eEo

sudo dnf install -y steam
setsid gtk-launch steam >/dev/null 2>&1 &
