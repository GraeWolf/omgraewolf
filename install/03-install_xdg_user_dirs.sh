#!/usr/bin/env bash

set -eEo pipefail

sudo dnf install -y xdg-user-dirs

xdg-user-dirs-update
