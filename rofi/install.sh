#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

curr_wd=$(pwd)
echo_info "Sym. linking rofi config file from $curr_wd to ~/.config/rofi"

mkdir -p ~/.config/rofi
ln -sfT ~/source/dotfiles/rofi/solarized-darker.rasi ~/.config/rofi/solarized-darker.rasi

echo_done "rofi config applied!"

