#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

curr_wd=$(pwd)
echo_info "Sym. linking rofi config file from $curr_wd to ~/.config/rofi"

mkdir -p ~/.config/rofi
ln -svf ~/source/dotfiles/rofi/*.rasi ~/.config/rofi/

echo_done "rofi config applied!"

