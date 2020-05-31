#!/bin/bash

. ../helpers.sh

echo_info "Install moc package and PulseAudio support together with dependencies built from newest sources"
yaourt -S moc-pulse-svn

curr_wd=$(pwd)
echo_info "Sym. linking MoC config file from $curr_wd to ~/.moc"

rm -r ~/.moc
ln -sT ~/source/dotfiles/moc ~/.moc

# Symlink desired music path to ~/Music if not there already
echo "Enter path where your Music is located."
echo "Leave empty if your music is located inside ~/Music."
echo -n "Path: "

read -r music_path

if [ -n "$music_path" ]; then
  ln -sT "$music_path" ~/Music
  echo "Music path symliked to ~/Music for MoC."
else
  echo "Alright, music path seems correct."
fi

echo_done "MoC config applied!"
