#!/bin/bash

echo "Press [CTRL+C] to stop the script."

# Infinite loop
while true; do
    osascript -e 'tell application "System Events" to key code 56' # First Shift press
    
    # Wait for 1 second
    sleep 30
done
