#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking git config file from $curr_wd to ~/.config/git"

ln -sf ~/source/dotfiles/git/gitconfig ~/.gitconfig
mkdir -p ~/.config/git
ln -sf ~/source/dotfiles/git/gitignore_global ~/.config/git/gitignore_global
ln -sf ~/source/dotfiles/git/gitattributes ~/.config/git/gitattributes
ln -sf ~/source/dotfiles/git/git-commit-message-template ~/.config/git/git-commit-message-template

echo_done "git config applied!"

