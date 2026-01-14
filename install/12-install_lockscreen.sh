#!/usr/bin/env bash

set -eEo

sudo dnf install -y gcc make cmake python-docutils glib2 glibc glibc-devel lib64glib2.0-devel libxcb libxcb-devel libxcb-util1 libxcb-util-devel pam lib64pam-devel autoconf automake libxcomposite1 libxcomposite-devel libxmu6 libxmu-devel libxmuu1 libxft libxrandr2 libxscrnsaver mplayer mpv imagemagick xset

git clone https://github.com/wavexx/xss-lock.git
cd xss-lock
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=None
make
sudo make install
sudo install -Dm644 LICENSE -t /usr/share/licenses/xss-lock

cd ..
git clone https://github.com/google/xsecurelock.git
cd xsecurelock
sh autogen.sh
./configure --prefix=/usr --libexecdir=/usr/lib --with-pam-service-name=system-auth
make
sudo make install
