#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

sudo apt-get install dunst adwaita-icon-theme

curr_wd=$(pwd)
echo_info "Sym. linking dunst config file from $curr_wd to ~/.config/dunst"

mkdir -p ~/.config/dunst
ln -sfT ~/source/dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc

echo_info "Restarting dunst to apply config"
systemctl --user restart dunst

echo_done "dunst config applied!"
