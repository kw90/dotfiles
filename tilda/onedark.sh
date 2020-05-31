#!/usr/bin/env bash
# Base16 - Tilda color scheme install script based on script by Gwyki
# (https://github.com/Gwyki/base16-tilda)
# Theme Builder - Leigh Robinson (www.hypercolumn.co.uk)
# Base16 - Chris Kempson (http://chriskempson.com)
# Onedark Colour Scheme - Lalit Magant (http://github.com/tilal6991)

. ../helpers.sh

killall tilda 2>/dev/null
sleep 1

# ERE http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap09.html#tag_09_04
config_regex="[[:digit:]]$"
filename=$(basename "$0")
filename="${filename%.*}"
textreset=$(tput sgr0) # reset the foreground colour
yellow=$(tput setaf 3)

for file in ./config_*
do
  if [[ $file =~ $config_regex ]]; then
    echo_info "Creating backup for $file"
    cp "$file" "$file".onedarkmod.bak

    echo_info "Adding theme to $file"
    sed -i '/^palette = /c\palette = {10280, 11308, 13364, 57568, 27756, 30069, 39064, 50115, 31097, 58853, 49344, 31611, 24929, 44975, 61423, 50886, 30840, 56797, 22102, 46774, 49858, 43947, 45746, 49087, 21588, 22616, 25186, 57568, 27756, 30069, 39064, 50115, 31097, 58853, 49344, 31611, 24929, 44975, 61423, 50886, 30840, 56797, 22102, 46774, 49858, 51400, 52428, 54484}' "$file"
    sed -i '/^back_red/c\back_red = 10280' "$file"
    sed -i '/^back_green/c\back_green = 11308' "$file"
    sed -i '/^back_blue/c\back_blue = 13364' "$file"
    sed -i '/^text_red/c\text_red = 43947' "$file"
    sed -i '/^text_green/c\text_green = 45746' "$file"
    sed -i '/^text_blue/c\text_blue = 49087' "$file"
    sed -i '/^scheme/c\scheme = 0' "$file"
    sed -i '/^palette_scheme/c\palette_scheme = 0' "$file"

    echo_done "Theme added to $file"
  fi
done

echo_done "All configs contain now theme ${yellow}$filename ${textreset}"
