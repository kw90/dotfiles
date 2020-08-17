#!/bin/bash

. ../helpers.sh

echo_info "Installing deps"

# sudo pacman -S firefox # firefox-nightly

curr_wd=$(pwd)

echo_info "Sym. linking ff config file from $curr_wd to ~/.mozilla/firefox/"

# How to find out profile ID automagically?
ln -sf "$curr_wd"/chrome "/Users/kw/Library/Application Support/Firefox/Profiles/oitctafc.default-release"

echo_done "firefox config applied!"

