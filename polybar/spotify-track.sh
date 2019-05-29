#!/bin/bash

PLAYER=$(playerctl --list-all)

if [[ $PLAYER == *"spotify"* ]]; then
  TITLE=$(exec playerctl metadata xesam:title)
  echo "$TITLE"
fi

