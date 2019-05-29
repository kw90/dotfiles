#!/bin/bash

. ../helpers.sh

echo_info "SymLinking polybar config and spells"

mkdir -p ~/.config/polybar

ln -sfT ~/source/dotfiles/polybar/polybar.conf ~/.config/polybar/polybar.conf
ln -sfT ~/source/dotfiles/polybar/launch_polybar.sh ~/.config/polybar/launch_polybar.sh
ln -sfT ~/source/dotfiles/polybar/spotify_artist.sh ~/.config/polybar/spotify_artist.sh
ln -sfT ~/source/dotfiles/polybar/spotify_track.sh ~/.config/polybar/spotify_track.sh
ln -sfT ~/source/dotfiles/polybar/spotify_status.py ~/.config/polybar/spotify_status.py

echo_done "polybar config applied"

echo_info "Installing fonts in local lib"

sudo cpan CPAN
perl -MCPAN -e 'install Font::FreeType'

echo_done "fonts installed successfully"

echo_info "Launching polybar"

bash ~/.config/polybar/launch_polybar.sh

echo_done "polybar launched successfully"

