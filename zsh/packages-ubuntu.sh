#!/bin/bash

# Check https://github.com/eosrei/twemoji-color-font
. ../helpers.sh

echo_info "Installing deps and emojis"

sudo apt-add-repository ppa:eosrei/fonts
sudo apt-get update
sudo apt-get install fonts-twemoji-svginot git-flow zsh

echo_done "Emojis successfully applied 🚀"

echo_info "Installing zsh related deps"

pip3 install thefuck grip
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/bobthecow/git-flow-completion ~/.oh-my-zsh/custom/plugins/git-flow-completion
