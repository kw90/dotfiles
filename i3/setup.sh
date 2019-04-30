#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking i3 config file from $curr_wd to ~/.i3/config"

mkdir -p ~/.i3
ln -sfT ~/source/dotfiles/i3/config ~/.config/i3/config
ln -sfT ~/source/dotfiles/i3/i3exit ~/.config/i3/i3exit

echo_done "i3 config applied!"

