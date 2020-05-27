#!/bin/bash

. ../helpers.sh

echo_info "Installing betterlockscreen package"

yaourt -S betterlockscreen

curr_wd=$(pwd)
echo_info "Sym. linking betterlockscreen config file from $curr_wd to ~/.config/betterlockscreenrc"

mkdir -p ~/.config
ln -sfT ~/source/dotfiles/betterlockscreen/betterlockscreenrc ~/.config/betterlockscreenrc

echo_info "Caching background images from cloud"
betterlockscreen -u ~/mega/Wallpapers/mac_workspaces --resolution 1920x1200 --blur 0.1 --wall dimblur

echo_done "betterlockscreen config applied!"
