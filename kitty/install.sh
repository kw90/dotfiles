#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking kitty config file from $curr_wd to ~/.config/kitty"

mkdir -p ~/.config/kitty
ln -sfT ~/source/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sfT ~/source/dotfiles/kitty/kitty.session ~/.config/kitty/kitty.session

echo_done "kitty config applied!"
