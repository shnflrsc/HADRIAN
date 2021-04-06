#!/bin/bash

while true
do

    clear

    echo -e "\n [1] Install Default Settings"
    echo " [2] Generate XSession*"
    echo " [3] Generate Desktop Entry*"
    echo " [4] Additional Fixes"
    echo -e " [5] Back\n"

    read -p "Configure: " -r
    case $REPLY in
        1)
            sudo pacman -S --noconfirm git base-devel

            git clone https://aur.archlinux.org/pantheon-default-settings.git
            (cd pantheon-default-settings/ && makepkg -si)

            echo 
            read -p " Install Default Settings - Done!"
            continue
            ;;
        2)
            echo -e "export TERM=io.elementary.terminal\n\nwingpanel &\nplank &\n\nexec gala" >> ~/.xsession
            sudo chmod +x ~/.xsession

            echo 
            read -p " Generate XSession - Done!"
            continue
            ;;
        3)
            echo -e "[Desktop Entry]\nEncoding=UTF-8\nType=Application\nName=Pantheon\nComment=Arch Linux variation of Pantheon\nExec=~/.xsession" >> pantheon.desktop

            sudo mkdir -p /usr/share/xsessions/
            sudo mv pantheon.desktop /usr/share/xsessions/pantheon.desktop

            echo 
            read -p " Generate Desktop Entry - Done!"
            continue
            ;;
        4)

            gsettings set org.gnome.desktop.background picture-uri file:///usr/share/wallpapers/elementary/'Sunset by the Pier.jpg'
            gsettings set org.gnome.desktop.interface monospace-font-name 'Droid Sans Mono Regular 10'

            sudo sed -i -e '$aHidden=true' /usr/share/applications/bvnc.desktop
            sudo sed -i -e '$aHidden=true' /usr/share/applications/bssh.desktop
            sudo sed -i -e '$aHidden=true' /usr/share/applications/avahi-discover.desktop
            sudo sed -i -e '$aHidden=true' /usr/share/applications/plank.desktop

            echo 
            read -p " Additional Fixes - Done!"
            continue
            ;;
        5)
            exit 0
            ;;
        *)
            continue
            ;;
    esac
done
