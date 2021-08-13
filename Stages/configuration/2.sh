#!/bin/bash

clear
sudo pacman -S ttf-roboto-mono --noconfirm
gsettings set org.gnome.desktop.interface monospace-font-name 'Roboto Mono 10'

echo 
read -p "Fix Terminal Font - Done!"
