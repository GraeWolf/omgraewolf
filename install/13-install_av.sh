#!/usr/bin/env bash

set -eEo

sudo dnf install -y ffmpeg gstreamer-tools gstreamer1.0-a52dec gstreamer1.0-cdio gstreamer1.0-cdparanoia gstreamer1.0-flac gstreamer1.0-gtk gstreamer1.0-lame gstreamer1.0-mpeg gstreamer1.0-pipewire gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-pulse gstreamer1.0-soup gstreamer1.0-vp8 gstreamer1.0-libav lib64gstreamer1.0_0
