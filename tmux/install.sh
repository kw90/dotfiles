#/bin/bash

mkdir -p ~/.config/tmux

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

ln -sf ~/source/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

