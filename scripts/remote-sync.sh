#!/usr/bin/bash

DEST="pol@192.168.1.32:/home/pol/laptop-backup/"
FLAGS="-az --delete --info=progress2"

rsync $FLAGS ~/.config $DEST 
rsync $FLAGS ~/.zshrc $DEST
rsync $FLAGS ~/code $DEST
rsync $FLAGS ~/Documents $DEST
rsync $FLAGS ~/PolVal $DEST
rsync $FLAGS ~/Zotero $DEST

date > ~/code/scripts/last-sync

rsync  $FLAGS ~/code/scripts/last-sync $DEST
