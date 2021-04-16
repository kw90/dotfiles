#!/bin/bash

. ../helpers.sh

echo_info "Installing packages"
yaourt -S bibata-cursor-translucent

echo_info "Sym. linking cursor files and copying config file"

ln -sfT ~/source/dotfiles/gtk/settings.ini ~/.config/gtk-4.0/settings.ini
ln -sfT ~/source/dotfiles/gtk/index.theme ~/.icons/default/index.theme
ln -sfT /usr/share/icons/Bibata_Spirit/cursors ~/.icons/default/cursors

echo_done "GTK and cursor config applied!"
