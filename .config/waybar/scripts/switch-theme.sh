#!/bin/bash

THEME_DIR="$HOME/.config/waybar/themes"
TARGET="$HOME/.config/waybar/current-colors.css"
ICON="   " # Nerd Font paint palette (works with JetBrainsMono Nerd Font)

# 1. Collect themes
themes=($(ls "$THEME_DIR"/*.css 2>/dev/null | xargs -n1 basename))

# 2. Build menu with same icon
menu=""
for t in "${themes[@]}"; do
  menu+="$ICON$t\n"
done

# 3. Show menu
choice=$(echo -e "$menu" | rofi -dmenu -i -p "Waybar Theme")

# Exit if nothing picked
[ -z "$choice" ] && exit 0

# 4. Strip icon to get filename
choice_file=$(echo "$choice" | sed "s/^$ICON//")

# 5. Copy and restart waybar
cp "$THEME_DIR/$choice_file" "$TARGET"
pkill waybar
nohup waybar >/dev/null 2>&1 &
