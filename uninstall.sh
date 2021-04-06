#!/bin/bash

while true
do 

    clear

    echo -e "\n [1] Uninstall Xorg & LightDM"
    echo " [2] Pantheon: Uninstall Essential"
    echo " [3] Pantheon: Uninstall Wingpanel Indicators"
    echo " [4] Pantheon: Uninstall Switchboard Plugs"
    echo " [5] Pantheon: Uninstall Default Applications"
    echo -e " [6] Back\n"

    read -p "Uninstall: " -r
    case $REPLY in
        1)
            sudo pacman -Rs --noconfirm xorg lightdm lightdm-gtk-greeter

            echo 
            read -p " Uninstall Xorg & LightDM - Done!"
            continue
            ;;
        2)
            sudo pacman -Rs --noconfirm gala plank wingpanel pantheon-applications-menu pantheon-terminal pantheon-files switchboard sound-theme-elementary

            echo
            read -p " Pantheon: Uninstall Essential - Done!"
            continue
            ;;
        3)
            sudo pacman -Rs --noconfirm wingpanel-indicator-datetime wingpanel-indicator-session wingpanel-indicator-power wingpanel-indicator-sound wingpanel-indicator-notifications wingpanel-indicator-network wingpanel-indicator-bluetooth wingpanel-indicator-nightlight wingpanel-indicator-keyboard

            echo
            read -p " Pantheon: Uninstall Wingpanel Indicators - Done!"
            continue
            ;;
        4)
            sudo pacman -Rs --noconfirm switchboard-plug-a11y switchboard-plug-about switchboard-plug-applications switchboard-plug-bluetooth switchboard-plug-datetime switchboard-plug-desktop switchboard-plug-display switchboard-plug-keyboard switchboard-plug-mouse-touchpad switchboard-plug-network switchboard-plug-notifications switchboard-plug-online-accounts switchboard-plug-parental-controls switchboard-plug-power switchboard-plug-printers switchboard-plug-security-privacy switchboard-plug-sharing switchboard-plug-sound switchboard-plug-user-accounts

            echo
            read -p " Pantheon: Uninstall Switchboard Plugs - Done!"
            continue
            ;;
        5)
            sudo pacman -Rs --noconfirm epiphany pantheon-calculator pantheon-calendar pantheon-code pantheon-music pantheon-photos pantheon-screenshot pantheon-shortcut-overlay pantheon-videos

            echo
            read -p " Pantheon: Uninstall Default Applications - Done!"
            continue
            ;;
        6)
            exit 0
            ;;
        *)
            continue
            ;;
    esac
done

exit 0