#!/usr/bin/bash

SCRIPTS_DIR="$HOME/code/scripts"

SCRIPTS=$(find "$SCRIPTS_DIR" -maxdepth 1 -type f -name "*.sh")

SCRIPT_NAMES=$(echo "$SCRIPTS" | sed "s|$SCRIPTS_DIR/||" | sed 's/\.sh$//')

SCRIPT=$(echo "$SCRIPT_NAMES" | rofi -dmenu -p "script launcher")

if [[ -z "$SCRIPT" ]]; then
    exit
elif echo "$SCRIPT_NAMES" | grep -qx "$SCRIPT"; then
    kitty --detach --class=floating-script -e "$SCRIPTS_DIR/$SCRIPT.sh"
else
    notify-send "Script '$SCRIPT' not found"
    exit 1
fi
