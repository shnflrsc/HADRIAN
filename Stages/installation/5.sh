#!/bin/bash

while true; do

    choice=$(\
    dialog \
    --clear \
    --stdout \
    --backtitle "HADRIAN: Installation" \
    --title "Choose Packages" \
    --checklist "Use SPACE to toggle on/off." 19 70 12 \
    pantheon-calculator "The Pantheon Calculator" off \
    pantheon-calendar "The Pantheon Calendar" off \
    pantheon-camera "The Pantheon Camera Application" off \
    pantheon-code "The Pantheon Text Editor" off \
    pantheon-files "The Pantheon File Browser" off \
    pantheon-mail "Mail app designed for elementary OS" off \
    pantheon-music "The Pantheon Music Player" off \
    pantheon-photos "The Pantheon Photos Manager" off \
    pantheon-screenshot "The Pantheon Screenshot Tool" off \
    pantheon-tasks "The Pantheon tasks" off \
    pantheon-videos "The Pantheon Video Player" off
    )

    case $choice in
        "")
            break
            ;;
    esac

    clear
    sudo pacman -S $choice --noconfirm

    echo 
    read -p "Default Applications - Done!"
    break
done
