#!/usr/bin/env bash

set -euo pipefail

./install/01-ssh_setup.sh
./install/02-git_setup.sh
./install/03-install_xdg_user_dirs.sh
./install/04-install_xlibre.sh
./install/05-install_nvidia.sh
./install/06-install_wm.sh
./install/07-setup_automount.sh
./install/08-install_fonts.sh
./install/09-install_ghostty.sh
./install/10-install_nvim.sh
./install/11-install_steam.sh
./install/12-install_lockscreen.sh
./install/13-install_av.sh
./install/14-enable_services.sh
