#!/bin/bash

. ../helpers.sh

echo_info "SymLinking polybar config and spells"

ln -sfT ~/source/dotfiles/polybar/config ~/.config/polybar/config
ln -sfT ~/source/dotfiles/polybar/i3wmthemer_bar_launch.sh ~/.config/polybar/i3wmthemer_bar_launch.sh
ln -sfT ~/source/dotfiles/polybar/spotify_status.py ~/.config/polybar/spotify_status.py

echo_done "polybar config applied"

