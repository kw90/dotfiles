#!/bin/bash

curr_wd=$(pwd)
echo_info "Removing symlinked i3 config file from $curr_wd to ~/.i3/config"

unlink ~/.config/i3/config

echo_done "i3 config symlink removed!"

