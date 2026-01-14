#!/usr/bin/env bash

set -eEo pipefail

sudo dnf install -y ghostty
ln -sfn $(pwd)/ghostty $HOME/.config/ghostty
