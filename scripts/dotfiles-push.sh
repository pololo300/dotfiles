#!/usr/bin/bash

DEST="/home/pol/code/dotfiles/"
FLAGS="-az --delete --info=progress2"

FOLDERS=(
        'btop'
        'dunst'
        'gdb '
        'hypr'
        'kitty'
        'nvim'
        'solaar'
        'swaylock'
        'waybar'
        'yazi'
        'zathura'
    )

mkdir -p $DEST/.config
for FOLDER in "${FOLDERS[@]}"; do
    # echo ~/.config/$FOLDER $DEST.config/
    rsync $FLAGS ~/.config/$FOLDER $DEST.config/
done

mkdir -p $DEST/scripts
rsync $FLAGS ~/code/scripts $DEST
cp -f ~/.zshrc $DEST

cd $DEST
git add -A
git commit -m="Auto update on $(date)$"

