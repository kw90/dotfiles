#!/bin/bash

. ../helpers.sh

echo_info "Installing tiling WM yabai and configs"

brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

rm ~/.yabairc
rm ~/.skhdrc
mkdir -p ~/.config/yabai
rm -r ~/source/dotfiles/yabai/scripts

ln -sf ~/source/dotfiles/yabai/yabairc ~/.yabairc
ln -sf ~/source/dotfiles/yabai/skhdrc ~/.skhdrc
ln -s ~/source/dotfiles/yabai/scripts ~/.config/yabai

skhd --config ~/.skhdrc
skhd --reload

brew services start skhd

echo_done "yabai, skhd and uebersicht configs applied"
