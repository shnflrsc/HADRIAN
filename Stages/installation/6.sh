#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Choose Packages" \
        --checklist "Use SPACE to toggle on/off." 15 80 8 \
        elementary-icon-theme "Named, vector icons for elementary OS" off \
        elementary-wallpapers "Collection of wallpapers for elementary OS" off \
        gtk-theme-elementary "elementary GTK theme" off \
        pantheon-default-settings "Default settings for Pantheon" off \
        pantheon-session "Session settings for Pantheon" off \
        pantheon-settings-daemon "Default settings for Pantheon (daemon)" off \
        sound-theme-elementary "A bespoke sound for your theme" off
    )

    case $choice in
        "")
            break
            ;;
    esac

    clear
    sudo pacman -S $choice --noconfirm

    echo 
    read -p "Themes & Settings - Done!"
    break
done
