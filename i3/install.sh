#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

. ./install_betterlock.sh

curr_wd=$(pwd)
echo_info "Sym. linking i3 config file from $curr_wd to ~/.i3/config"

mkdir -p ~/.i3
ln -sfT ~/source/dotfiles/i3/config.arch.wide-display ~/.config/i3/config
ln -sfT ~/source/dotfiles/i3/i3exit ~/.config/i3/i3exit

echo_done "i3 config applied!"

