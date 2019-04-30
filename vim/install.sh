#!/bin/bash

. ../helpers.sh

echo_info "Sym. linking vim config"

ln -sfT ~/source/dotfiles/vim/.vimrc ~/.vimrc

echo_done "vim config applied"

