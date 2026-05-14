#!/usr/bin/env bash

sudo dnf install -y	https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
					https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf update -y @core
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y

# Hardware Accelerated Codec (https://rpmfusion.org/Howto/Multimedia)
sudo dnf install -y intel-media-driver

# Play a DVD
sudo dnf install -y rpmfusion-free-release-tainted
sudo dnf install -y libdvdcss

# Various firmwares
sudo dnf install -y rpmfusion-nonfree-release-tainted
sudo dnf --repo=rpmfusion-nonfree-tainted install -y "*-firmware"

# EOF
