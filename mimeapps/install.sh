#!/bin/bash

. ../helpers.sh

echo_info "Installing mimeo via AUR"

yaourt -S mimeo

curr_wd=$(pwd)
echo_info "Sym. linking mimeo config file from $curr_wd to ~/.config/"

mkdir -p ~/.config
ln -sfT ~/source/dotfiles/mimeapps/mimeapps.list ~/.config/mimeapps.list

echo_done "mimeo config applied!"
