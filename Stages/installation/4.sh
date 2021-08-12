#!/bin/bash

while true; do

    choice=$(\
        dialog \
        --clear \
        --stdout \
        --backtitle "HADRIAN: Installation" \
        --title "Choose Packages" \
        --checklist "Use SPACE to toggle on/off." 30 90 22 \
        switchboard-plug-a11y "Switchboard Universal Access Plug" on \
        switchboard-plug-about "Switchboard About Plug" off \
        switchboard-plug-applications "Switchboard Applications Plug" off \
        switchboard-plug-bluetooth "Switchboard Bluetooth Plug" off \
        switchboard-plug-datetime "Switchboard Date & Time Plug" on \
        switchboard-plug-desktop "Switchboard Desktop Plug" on \
        switchboard-plug-display "Switchboard Display Plug" on \
        switchboard-plug-keyboard "Switchboard Keyboard Plug" on \
        switchboard-plug-locale "Switchboard Locale Plug" on \
        switchboard-plug-mouse-touchpad "Switchboard Mouse & Touchpad Plug" on \
        switchboard-plug-network "Switchboard Network Plug" on \
        switchboard-plug-notifications "Switchboard Notifications Plug" on \
        switchboard-plug-online-accounts "Switchboard Online Accounts Plug" off \
        switchboard-plug-parental-controls "Switchboard Parental Controls Plug" off \
        switchboard-plug-power "Switchboard Power Plug" on \
        switchboard-plug-printers "Switchboard Printers Plug" off \
        switchboard-plug-security-privacy "Switchboard Security & Privacy Plug" on \
        switchboard-plug-sharing "Switchboard Sharing Plug" off \
        switchboard-plug-sound "Switchboard Sound Plug" on \
        switchboard-plug-user-accounts "Switchboard User Accounts Plug" on \
        switchboard-plug-wacom "Switchboard wacom Plug" off
    )

    case $choice in
        "")
            break
            ;;
    esac

    clear
    sudo pacman -S $choice --noconfirm

    echo 
    read -p "Switchboard Plugs - Done!"
    break
done