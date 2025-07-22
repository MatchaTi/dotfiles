#!/bin/zsh

filename="$HOME/Pictures/screenshot-$(date +%Y%m%d-%H%M%S).png"

slurp | while read -r area; do
  grim -g "$area" "$filename"
  grim -g "$area" - | wl-copy
done
