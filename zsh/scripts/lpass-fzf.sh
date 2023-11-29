#!/bin/bash

# Check if the user is logged in
lpass status
if [ $? -ne 0 ]; then
  echo "You are not logged in to LastPass."
  lpass login --trust kai.waelti@safe-living.com
fi

# Fetch LastPass entries and select one using fzf
selected_entry=$(lpass ls --long | grep -v 'Multiple Matches' | awk -F'/' '{print $NF}' | fzf)
echo "$selected_entry"

# Check if an entry is selected
if [ -z "$selected_entry" ]; then
  echo "No entry selected."
  exit 1
fi

# Extract the entry ID
entry_id=$(echo "$selected_entry" | grep -oP '(?<=id: )\d+')

# Copy the password to the clipboard
lpass show --password "$entry_id" | xclip -selection clipboard

echo "Password copied to clipboard!"
