#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Choose Packages" \
        --checklist "Use SPACE to toggle on/off." 17 80 10 \
        capnet-assist "Captive Portal Assistant" off \
        cerbere "The Pantheon Watchdog" off \
        contractor "A desktop-wide extension service" off \
        granite "Library that extends Gtk+" off \
        pantheon-geoclue2-agent "Pantheon Geoclue2 Agent" off \
        pantheon-onboarding "Onboarding app for new users" off \
        pantheon-polkit-agent "Pantheon Polkit Agent" off \
        pantheon-shortcut-overlay "A native, OS-wide shortcut overlay" off \
        pantheon-sideload "Sideload Flatpaks on elementary OS" off
    )

    case $choice in
        "")
            break
            ;;
    esac

    clear
    echo "sudo pacman -S $choice --noconfirm"

    echo 
    read -p "Miscellaneous - Done!"
    break
done