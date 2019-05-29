#!/bin/bash

PLAYER=$(playerctl --list-all)

if [[ $PLAYER == *"spotify"* ]]; then
  ARTIST=$(exec playerctl metadata xesam:artist)
  echo "$ARTIST"
fi

