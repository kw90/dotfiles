#!/bin/bash

. ../helpers.sh

echo_info "Installing oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo_info "Installing Spaceship prompt"

git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt

ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
rm ~/.zshrc
rm ~/.aliases
ln -s ~/source/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/source/dotfiles/zsh/aliases ~/.aliases

. ./packages.mac.sh

echo_done "zshrc config applied"
