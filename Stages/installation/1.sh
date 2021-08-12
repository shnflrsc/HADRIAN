#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Choose Packages" \
        --checklist "Use SPACE to toggle on/off." 11 70 7 \
        xorg-server "Xorg X server" off \
        lightdm "A lightweight display manager" off \
        lightdm-pantheon-greeter "Pantheon greeter for LightDM" off
    )

    case $choice in
        "")
            break
            ;;
    esac

    clear
    sudo pacman $choice --noconfirm

    echo 
    read -p "Essentials - Done!"
    break
done