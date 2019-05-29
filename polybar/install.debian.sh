#!/bin/bash

. ../helpers.sh

echo_info "SymLinking polybar config and spells"

mkdir -p ~/.config/polybar

ln -sfT ~/source/dotfiles/polybar/polybar.conf ~/.config/polybar/polybar.conf
ln -sfT ~/source/dotfiles/polybar/launch-polybar.debian.sh ~/.config/polybar/launch-polybar.sh
ln -sfT ~/source/dotfiles/polybar/spotify-artist.sh ~/.config/polybar/spotify-artist.sh
ln -sfT ~/source/dotfiles/polybar/spotify-track.sh ~/.config/polybar/spotify-track.sh
ln -sfT ~/source/dotfiles/polybar/spotify-status.py ~/.config/polybar/spotify-status.py

echo_done "polybar config applied"

echo_info "Installing fonts in local lib"

sudo cpan CPAN
perl -MCPAN -e 'install Font::FreeType'

echo_done "fonts installed successfully"

echo_info "Launching polybar"

bash ~/.config/polybar/launch-polybar.sh

echo_done "polybar launched successfully"

