#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Choose Packages" \
        --checklist "Use SPACE to toggle on/off." 18 85 11 \
        wingpanel-indicator-a11y "Wingpanel Universal Access Indicator" off \
        wingpanel-indicator-bluetooth "Wingpanel Bluetooth Indicator" off \
        wingpanel-indicator-datetime "Date & Time indicator for Wingpanel" off \
        wingpanel-indicator-keyboard "Wingpanel Keyboard Indicator" off \
        wingpanel-indicator-network "Wingpanel Network Indicator" off \
        wingpanel-indicator-nightlight "Winganel Nightlight Indicator" off \
        wingpanel-indicator-notifications "Notifications indicator for Wingpanel" off \
        wingpanel-indicator-power "Wingpanel Power Indicator" off \
        wingpanel-indicator-session "Session indicator for Wingpanel" off \
        wingpanel-indicator-sound "Wingpanel Sound Indicator" off
    )

    case $choice in
        "")
            break
            ;;
    esac

    clear
    sudo pacman -S $choice --noconfirm

    echo 
    read -p "Wingpanel Indicators - Done!"
    break
done