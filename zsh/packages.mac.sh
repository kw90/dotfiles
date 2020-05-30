#!/bin/bash

# Check https://github.com/eosrei/twemoji-color-font
. ../helpers.sh

echo_info "Installing deps and emojis"

brew install git-flow-avh thefuck

echo_done "Emojis already applied 🚀"

echo_info "Installing zsh related deps"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/bobthecow/git-flow-completion ~/.oh-my-zsh/custom/plugins/git-flow-completion
