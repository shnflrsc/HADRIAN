#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Configuration" \
        --title "Select Configuration" \
        --cancel-label "Back" \
        --menu "Use UP/DOWN keys to navigate." 13 60 6 \
        1 "Autostart Plank" \
        2 "Fix Terminal Font" \
        3 "Set Default Background" \
        4 "Hide Originally Hidden Applications" \
        5 "Enable LightDM Pantheon Greeter"
    )

    case $choice in
        1)
            sh Stages/configuration/1.sh
            ;;
        2)
            sh Stages/configuration/2.sh
            ;;
        3)
            sh Stages/configuration/3.sh
            ;;
        4)
            sh Stages/configuration/4.sh
            ;;
        5)
            sh Stages/configuration/5.s
            ;;
        *)
            exit
            ;;
    esac

done