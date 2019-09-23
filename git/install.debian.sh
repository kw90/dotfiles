#!/bin/bash

. ../helpers.sh

curr_wd=$(pwd)
echo_info "Sym. linking git config file from $curr_wd to ~/.config/git"

ln -sfT ~/source/dotfiles/git/.gitconfig.debian ~/.gitconfig
mkdir -p ~/.config/git
ln -sfT ~/source/dotfiles/git/gitignore_global ~/.config/git/gitignore_global
ln -sfT ~/source/dotfiles/git/gitattributes ~/.config/git/gitattributes
ln -sfT ~/source/dotfiles/git/git-commit-message-template ~/.config/git/git-commit-message-template

echo_done "git config applied!"

