#!/bin/bash

. ../helpers.sh

echo_info "SymLinking polybar config and spells"

ln -sfT ~/source/dotfiles/polybar/polybar.conf ~/.config/polybar/polybar.conf
ln -sfT ~/source/dotfiles/polybar/launch_polybar.sh ~/.config/polybar/launch_polybar.sh
ln -sfT ~/source/dotfiles/polybar/spotify_status.sh ~/.config/polybar/spotify_status.sh

echo_done "polybar config applied"

echo_info "Installing fonts in local lib"

perl -MCPAN -e 'install Font::FreeType'

echo_done "fonts installed successfully"

echo_info "Launching polybar"

bash ~/.config/polybar/launch_polybar.sh

echo_done "polybar launched successfully"

