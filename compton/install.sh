#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking compton config file from $curr_wd to ~/.config/compton"

mkdir -p ~/.config/compton
ln -sfT ~/source/dotfiles/compton/compton.conf ~/.config/compton/compton.conf

compton --config ~/.config/compton/compton.conf

echo_done "compton config applied!"

