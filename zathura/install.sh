#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking zathura config file from $curr_wd to ~/.config/zathura"

mkdir -p ~/.config/zathura
ln -sfT ~/source/dotfiles/zathura/zathurarc ~/.config/zathura/zathurarc

echo_done "zathura config applied!"
