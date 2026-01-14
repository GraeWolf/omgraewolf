#!/usr/bin/env bash

set -eEo pipefail

sudo dnf install -y neovim rust-ripgrep fzf luarocks 

ln -sfn $(pwd)/nvim $HOME/.config/nvim
