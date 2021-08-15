#!/bin/bash

dialog \
--stdout \
--backtitle "HADRIAN: About" \
--title "About" \
--msgbox "HADRIAN is a collection of bash scripts that conveniently installs the Pantheon desktop environment in Arch Linux.\n\nThe Pantheon package group is currently experiencing continuous changes as it is transitioning to being distro-agnostic.\n\nIf something changed and broke the script, please open an issue at GitHub!" 14 60

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Main Menu" \
        --title "Select Stage" \
        --cancel-label "Exit" \
        --menu "Use UP/DOWN arrows to navigate." 9 40 5 \
        1 "Installation" \
        2 "Configuration" \
    )

    case $choice in
        1)
            sh Stages/installation/INSTALLATION.sh
            continue
            ;;
        2)
            sh Stages/configuration/CONFIGURATION.sh
            continue
            ;;
        *)
            exit
            ;;
    esac
done