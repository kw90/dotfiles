#!/bin/bash

. ../helpers.sh

echo_info "Install moc package and PulseAudio support together with dependencies built from newest sources"
yaourt -S moc-pulse-svn

curr_wd=$(pwd)
echo_info "Sym. linking moc config file from $curr_wd to ~/.moc"

rm -r ~/.moc
ln -sT ~/source/dotfiles/moc ~/.moc

echo_done "moc config applied!"
