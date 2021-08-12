#!/bin/bash

clear
sudo pacman -S ttf-droid --noconfirm
gsettings set org.gnome.desktop.interface monospace-font-name 'Droid Sans Mono Regular 10'

echo 
read -p "Fix Terminal Font - Done!"