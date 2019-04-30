#!/bin/bash

PLAYER=$(playerctl --list-all)

if [[ $PLAYER == *"spotify"* ]]; then
  TITLE=$(exec playerctl metadata xesam:title)
  ARTIST=$(exec playerctl metadata xesam:artist)
  ALBUM=$(exec playerctl metadata xesam:album)
  echo "$ARTIST - $TITLE from $ALBUM"
fi

