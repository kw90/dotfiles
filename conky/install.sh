#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking conky config file from $curr_wd to ~/.conky/conky.conf"

mkdir -p ~/.config/conky
ln -sfT ~/source/dotfiles/conky/conky.conf ~/.config/conky/conky.conf
sudo ln -sfT ~/source/dotfiles/conky/start_conky /usr/bin/start_conky

echo_done "conky config applied!"
