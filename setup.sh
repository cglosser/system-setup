#!/bin/bash

TEMP_DIR="/tmp"

echo "Updating system..."
sudo apt update && sudo apt upgrade

# Install most used software
echo "Installing software..."

sudo apt install etckeeper
sudo apt install apt-transport-https avahi-daemon awscli blueman build-essential \
                 clang-format conky-all curl darktable evince fonts-font-awesome \
                 fonts-hack-otf gimp git git-lfs gtk2-engines htop i3 inkscape \
                 intel-microcode julia keepassx lightdm lightdm lshw meld \
                 nethack-console network-manager network-manager-gnome orpie \
                 p7zip-full pandoc pavucontrol pulseaudio-module-bluetooth \
                 racket ranger rsync stow terminator thunar transmission-qt \
                 units valgrind vim vim-gtk wget xfce4-power-manager xsel zsh

# Big stuff
sudo apt install libboost-all-dev libeigen3-dev libfftw3-dev texlive-full

echo "Installing syncthing..."
bash syncthing.sh

echo "Fixing XPS wireless..."
bash xps-wireless.sh
