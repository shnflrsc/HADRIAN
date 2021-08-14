#!/bin/bash

clear
sudo pacman -S inter-font ttf-opensans ttf-roboto-mono --noconfirm
gsettings set org.gnome.desktop.interface font-name 'Inter 9'
gsettings set org.gnome.desktop.interface document-font-name 'Open Sans 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'Roboto Mono 10'

echo 
read -p "Fix Default Fonts - Done!"
