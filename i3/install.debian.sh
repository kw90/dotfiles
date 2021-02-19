#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

sudo apt update
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev \
    libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev \
    libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev \
    libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev \
    libjpeg-dev

cd i3lock-color
git checkout master
git pull origin master
chmod +x install-i3lock-color.sh
./install-i3lock-color.sh
cd ..

. ./install_betterlock.sh

curr_wd=$(pwd)
echo_info "Sym. linking i3 config file from $curr_wd to ~/.config/i3/config"

mkdir -p ~/.i3
ln -sfT ~/source/dotfiles/i3/config.debian.wide-display ~/.config/i3/config
ln -sfT ~/source/dotfiles/i3/i3exit ~/.i3/i3exit

echo_done "i3 config applied!"

