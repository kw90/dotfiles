#!/bin/env sh

pkill polybar

sleep 1;

polybar bottom & #&& polybar top &
