#!/usr/bin/env bash

set -eEo pipefail

# Install Bspwm, polybar and helper apps.
sudo dnf install -y bspwm sxhkd rofi picom polybar fastfetch \
           arandr polkit-gnome gvfs networkmanager networkmanager-wifi \
           bluez bluez-tools pipewire pipewire-pulse pavucontrol \
           lxsession feh unzip alsa-utils bat \
	         xsettingsd dunst zoxide bash-completion 

chmod 755 bspwm/bspwmrc
chmod 644 sxhkd/sxhkdrc

ln -sfn $(pwd)/bspwm $HOME/.config/bspwm
ln -sfn $(pwd)/xsettingsd $HOME/.config/xsettingsd
ln -sfn $(pwd)/picom $HOME/.config/picom
ln -sfn $(pwd)/polybar $HOME/.config/polybar
ln -sfn $(pwd)/sxhkd $HOME/.config/sxhkd
ln -sfn $(pwd)/xinitrc $HOME/.xinitrc
ln -sfn $(pwd)/scripts $HOME/.local/scripts
ln -sfn $(pwd)/dunst $HOME/.config/dunst
ln -sfn $(pwd)/.bash_profile $HOME/.bash_profile
ln -sfn $(pwd)/.bashrc $HOME/.bashrc
ln -sfn $(pwd)/starship.toml $HOME/.config/starship.toml

