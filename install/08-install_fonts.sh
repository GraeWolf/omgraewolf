#!/usr/bin/env bash

set -eEo pipefail

sudo dnf install -y fonts-ttf-nerd-jetbrains-mono

mkdir -p $HOME/.local/share/fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.zip
unzip NerdFontsSymbolsOnly.zip -d $HOME/.local/share/fonts
rm -rf $HOME/.local/share/fonts/{README.md,LICENSE}
fc-cache
