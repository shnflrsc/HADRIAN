#!/bin/bash

while true
do

    clear

    echo -e "\n [1] Pacman Sync & Update"
    echo " [2] Install Xorg & LightDM"
    echo " [3] Pantheon: Install Essential"
    echo " [4] Pantheon: Install Wingpanel Indicators"
    echo " [5] Pantheon: Install Switchboard Plugs"
    echo " [6] Pantheon: Install Default Applications"
    echo -e " [7] Back\n"

    read -p "Install: " -r
    case $REPLY in
        1)
            sudo pacman -Syu --noconfirm

            echo 
            read -p " Pacman Sync & Update - Done!"
            continue
            ;;
        2)
            sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter
            sudo systemctl enable lightdm

            # Delete line 102 in lightdm.conf
            sudo sed -i '102d' /etc/lightdm/lightdm.conf
            # Add line 102 to lightdm.conf
            sudo sed -i '102i\greeter-session=lightdm-gtk-greeter' /etc/lightdm/lightdm.conf

            echo 
            read -p " Install Xorg & LightDM - Done!"
            continue
            ;;
        3)
            sudo pacman -S --noconfirm gala plank wingpanel pantheon-applications-menu pantheon-terminal pantheon-files switchboard sound-theme-elementary

            echo 
            read -p " Pantheon: Install Essential - Done!"
            continue
            ;;
        4)
            sudo pacman -S --noconfirm wingpanel-indicator-datetime wingpanel-indicator-session wingpanel-indicator-power wingpanel-indicator-sound wingpanel-indicator-notifications wingpanel-indicator-network wingpanel-indicator-bluetooth wingpanel-indicator-nightlight wingpanel-indicator-keyboard

            echo 
            read -p " Pantheon: Install Wingpanel Indicators - Done!"
            continue
            ;;
        5)
            sudo pacman -S --noconfirm switchboard-plug-a11y switchboard-plug-about switchboard-plug-applications switchboard-plug-bluetooth switchboard-plug-datetime switchboard-plug-desktop switchboard-plug-display switchboard-plug-keyboard switchboard-plug-mouse-touchpad switchboard-plug-network switchboard-plug-notifications switchboard-plug-online-accounts switchboard-plug-parental-controls switchboard-plug-power switchboard-plug-printers switchboard-plug-security-privacy switchboard-plug-sharing switchboard-plug-sound switchboard-plug-user-accounts

            echo 
            read -p " Pantheon: Install Switchboard Plugs - Done!"
            continue
            ;;
        6)
            sudo pacman -S --noconfirm epiphany pantheon-calculator pantheon-calendar pantheon-code pantheon-music pantheon-photos pantheon-screenshot pantheon-shortcut-overlay pantheon-videos

            echo
            read -p " Pantheon: Install Default Applications - Done!"
            continue
            ;;
        7)
            exit 0
            ;;
        *)
            continue
            ;;
    esac
done