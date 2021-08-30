#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Choose Packages" \
        --checklist "Use SPACE to toggle on/off." 14 70 7 \
        gala "The Pantheon Window Manager" on \
        plank "Elegant, simple, clean dock" on \
        wingpanel "The Pantheon Top Panel" on \
        pantheon-applications-menu "The Pantheon Application Menu" on \
        pantheon-notifications "Gtk Notifications Server" on \
        pantheon-terminal "The Pantheon Terminal Emulator" on \
        switchboard "The Pantheon Control Center" on
    )

    case $choice in
        "")
            break
            ;;
    esac

    clear
    sudo pacman -S $choice --noconfirm

    echo 
    read -p "Pantheon Base - Done!"
    break
done