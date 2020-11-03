#!/bin/bash

. packages.sh
. helpers.sh

sudo pacman -S base-devel git wget yajl
mkdir ~/source
git clone https://aur.archlinux.org/package-query.git
cd source/package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..
sudo rm -dR yaourt/ package-query/

