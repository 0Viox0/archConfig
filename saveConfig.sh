#!/bin/bash

# Script to backup awesomewm, polybar, picom, and x11/xorg configs to current directory

# Create backup directory with timestamp
BACKUP_DIR="."

echo "Backing up configuration files to ./$BACKUP_DIR/"

echo "Backing up AwesomeWM configs..."
mkdir -p "$BACKUP_DIR"/awesome
if [ -d "$HOME/.config/awesome" ]; then
    cp -r "$HOME/.config/awesome" "$BACKUP_DIR"/
else
    echo "AwesomeWM config directory not found at $HOME/.config/awesome"
fi

echo "Backing up Polybar configs..."
mkdir -p "$BACKUP_DIR"/polybar
if [ -d "$HOME/.config/polybar" ]; then
    cp -r "$HOME/.config/polybar" "$BACKUP_DIR"/
else
    echo "Polybar config directory not found at $HOME/.config/polybar"
fi

echo "Backing up Picom config..."
mkdir -p "$BACKUP_DIR"/picom
if [ -f "$HOME/.config/picom.conf" ]; then
    cp "$HOME/.config/picom.conf" "$BACKUP_DIR"/picom/
elif [ -f "$HOME/.config/picom/picom.conf" ]; then
    cp "$HOME/.config/picom/picom.conf" "$BACKUP_DIR"/picom/
else
    echo "Picom config file not found in $HOME/.config/"
fi

# not for now 
# # Backup X11/Xorg configs
# echo "Backing up X11/Xorg configs..."
# mkdir -p "$BACKUP_DIR"/x11
# if [ -f "$HOME/.xinitrc" ]; then
#     cp "$HOME/.xinitrc" "$BACKUP_DIR"/x11/
# fi
# if [ -f "$HOME/.Xresources" ]; then
#     cp "$HOME/.Xresources" "$BACKUP_DIR"/x11/
# fi
# if [ -f "$HOME/.Xdefaults" ]; then
#     cp "$HOME/.Xdefaults" "$BACKUP_DIR"/x11/
# fi
# if [ -d "/etc/X11" ]; then
#     mkdir -p "$BACKUP_DIR"/x11/etc_X11
#     cp -r "/etc/X11/xorg.conf" "/etc/X11/xorg.conf.d" "$BACKUP_DIR"/x11/etc_X11/ 2>/dev/null
# fi
#
# echo "Backup complete! Files are in ./$BACKUP_DIR/"
