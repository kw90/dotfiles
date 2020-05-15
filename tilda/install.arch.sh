#!/bin/bash

. ../helpers.sh

echo_info "Installing tilda package"

sudo pacman -S tilda

curr_wd=$(pwd)
echo_info "Sym. linking tilda config file from $curr_wd to ~/.config/tilda"

mkdir -p ~/.config/tilda
ln -sfT ~/source/dotfiles/tilda/config_0 ~/.config/tilda/config_0
ln -sfT ~/source/dotfiles/tilda/config_1 ~/.config/tilda/config_1
ln -sfT ~/source/dotfiles/tilda/config_2 ~/.config/tilda/config_2

echo_done "tilda config applied!"
