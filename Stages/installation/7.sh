#!/bin/bash

while true; do

    dialog \
    --clear \
    --stdout \
    --backtitle "HADRIAN: Installation" \
    --title "Confirmation" \
    --yesno "The base-devel package group is required to install switchboard-plug-pantheon-tweaks from the AUR.\n\nContinue?" 8 55

    choice=$?

    case $choice in
        0)
            break
            ;;
        1)
            exit
            ;;
        *)
            continue
            ;;
    esac
done

clear
sudo pacman -S base-devel --noconfirm
git clone https://aur.archlinux.org/switchboard-plug-pantheon-tweaks-git.git
(cd switchboard-plug-pantheon-tweaks-git && makepkg -si)

echo 
read -p "Pantheon Tweaks - Done!"