#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

. ./install_betterlock.sh
echo_info "Installing i3-gaps-rounded-git can be problematic if there's already i3-gaps installed and is a dependency for a settings manager"
yaourt -S i3-gaps-rounded-git

curr_wd=$(pwd)
echo_info "Sym. linking i3 config file from $curr_wd to ~/.config/i3/config"

mkdir -p ~/.i3
ln -sfT ~/source/dotfiles/i3/config.arch.multi-display ~/.i3/config
ln -sfT ~/source/dotfiles/i3/i3exit ~/.i3/i3exit

xrandr --output DP-1 --primary --left-of DVI-D-0

echo_done "i3 config applied!"

