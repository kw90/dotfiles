#!/bin/bash

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
