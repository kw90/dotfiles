#!/bin/bash

. ../../helpers.sh

echo_info "SymLinking polybar config and spells"

mkdir -p ~/.config/polybar

ln -s ~/source/dotfiles/polybar/current_theme/* ~/.config/polybar/

echo_done "polybar config applied"

echo_info "Launching polybar"

bash launch.sh

