#!/bin/bash

. ../helpers.sh

echo_info "Installing oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo_info "Installing Spaceship prompt"

git clone https://github.com/denysdovhan/spaceship-prompt.git "/home/kw/.oh-my-zsh/custom/themes/spaceship-prompt"

ln -s "/home/kw/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "/home/kw/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
rm ~/.zshrc
rm ~/.aliases
ln -s ~/source/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/source/dotfiles/zsh/aliases ~/.aliases
ln -s ~/source/dotfiles/zsh/dir_colors ~/.dir_colors

. ./packages.sh

echo_done "zshrc config applied"
