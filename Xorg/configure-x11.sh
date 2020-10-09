#!/bin/bash

# For US keyboard
# Allow Alt+Shift toggle US -> CH keymap
# Add more maps by adding the 2-letter country code
localectl --no-convert set-x11-keymap us,ch grp:alt_shift_toggle

