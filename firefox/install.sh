#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

sudo pacman -S firefox # firefox-nightly

curr_wd=$(pwd)

echo_info "Sym. linking ff config file from $curr_wd to ~/.mozilla/firefox/"

#ln -sfT "$curr_wd"/chrome ~/.mozilla/firefox/???

echo_done "firefox config applied!"

