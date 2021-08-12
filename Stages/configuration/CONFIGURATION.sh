#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --nocancel \
        --backtitle "HADRIAN: Configuration" \
        --title "Select Configuration" \
        --menu "Use UP/DOWN keys to navigate." 15 60 5 \
        1 "Autostart Plank" \
        2 "Fix Terminal Font" \
        3 "Set Default Background" \
        4 "Hide Originally Hidden Applications" \
        5 "Set LightDM Greeter" \
        " " "" \
        6 "Continue" \
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
            sh Stages/configuration/5.sh
        6)
            break
            ;;
        " ")
            continue
            ;;
        *)
            continue
            ;;
    esac

done