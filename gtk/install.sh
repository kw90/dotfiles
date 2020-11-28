#!/bin/bash

. ../helpers.sh

echo_info "Installing packages"
yaourt -S bibata-cursor-translucent

echo_info "Sym. linking cursor files and copying config file"

ln -sfT ./index.theme ~/.icons/default/index.theme
ln -sfT /usr/share/icons/Bibata_Spirit/cursors ~/.icons/default/cursors

echo_done "GTK and cursor config applied!"
