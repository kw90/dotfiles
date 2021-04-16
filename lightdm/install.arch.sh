#!/bin/bash

sudo pacman -S lightdm lightdm-webkit2-greeter

ln -sfT ~/source/dotfiles/lightdm/doto /usr/share/lightdm-webkit/themes/doto
sudo ln -sfT ~/source/dotfiles/lightdm/lightdm.conf /etc/lightdm/lightdm.conf
sudo ln -sfT ~/source/dotfiles/lightdm/lightdm-webkit2-greeter.conf /etc/lightdm/lightdm-webkit2-greeter.conf

./doto/download.sh

# Maybe have to install
# sudo pacman -S gstreamer gst-libav gst-plugins-bad
# yaourt -S webkitgtk
