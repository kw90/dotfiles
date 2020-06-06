#!/bin/bash

. ../helpers.sh

echo_info "Installing betterlockscreen package"

yaourt -S betterlockscreen

curr_wd=$(pwd)
echo_info "Sym. linking betterlockscreen config file from $curr_wd to ~/.config/betterlockscreenrc"

mkdir -p ~/.config
ln -sfT ~/source/dotfiles/betterlockscreen/betterlockscreenrc ~/.config/betterlockscreenrc

# Symlink desired music path to ~/Wallpaper if not there already
echo "Enter path where your Wallpapers are located."
echo "Leave empty if your Wallpapers are located inside ~/Wallpaper."
echo -n "Path: "

read -r wallpaper_path

if [ -n "$wallpaper_path" ]; then
  ln -sT "$wallpaper_path" ~/Wallpaper
  echo_done "Wallpaper path symliked to ~/Wallpaper for Betterlockscreen."
else
  echo_done "Alright, Wallpaper path seems correct."
fi

echo_info "Caching background images from cloud"
betterlockscreen -u ~/Wallpaper --resolution 1920x1200 --blur 0.1 --wall dimblur

echo_done "betterlockscreen config applied!"
