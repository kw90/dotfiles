#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking compton config file from $curr_wd to ~/.config/compton"

ln -sfT ~/source/dotfiles/compton/compton.conf ~/.config/compton.conf

compton --config ~/.config/compton.conf

echo_done "compton config applied!"

