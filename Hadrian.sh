#!/bin/bash

read -p "Press ENTER to install Pantheon..."
echo "Installing Pantheon..."

[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

sudo pacman -Syu

echo -e "\nStage 1: Packages\n"
## First set of packages: Xorg and Preferred Display Manager
sudo pacman -S --noconfirm xorg xorg-xinit lightdm lightdm-pantheon-greeter
sudo systemctl enable lightdm

 sudo sed 's/greeter-session=example-gtk-gnome.*/greeter-session=io.elementary.greeter/' /etc/lightdm/lightdm.conf

## Second set of packages: Desktop Components
sudo pacman -S --noconfirm gala plank wingpanel pantheon-applications-menu pantheon-terminal pantheon-files switchboard sound-theme-elementary capnet-assist

## Third set of packages: Wingpanel indicators
sudo pacman -S --noconfirm wingpanel-indicator-datetime wingpanel-indicator-session wingpanel-indicator-power wingpanel-indicator-sound wingpanel-indicator-notifications wingpanel-indicator-network wingpanel-indicator-bluetooth wingpanel-indicator-nightlight wingpanel-indicator-keyboard

## Fourth set of packages: Switchboard (settings) completion
sudo pacman -S --noconfirm switchboard-plug-a11y switchboard-plug-about switchboard-plug-applications switchboard-plug-bluetooth switchboard-plug-datetime switchboard-plug-desktop switchboard-plug-display switchboard-plug-keyboard switchboard-plug-mouse-touchpad switchboard-plug-network switchboard-plug-notifications switchboard-plug-online-accounts switchboard-plug-parental-controls switchboard-plug-power switchboard-plug-printers switchboard-plug-security-privacy switchboard-plug-sharing switchboard-plug-sound switchboard-plug-user-accounts

echo -e "\nStage 2: Default Settings\n"
## Default settings for Pantheon
sudo pacman -S --noconfirm git base-devel

mkdir ~/Git
(cd ~/Git;git clone https://aur.archlinux.org/pantheon-default-settings.git)

(cd ~/Git;makepkg -si)

echo -e "\nStage 3: Configuration\n"

## Make a custom desktop session at (/usr/share/xsessions)

echo -e "export TERM=io.elementary.terminal\n\nwingpanel &\nplank &\n\nexec gala" >> ~/.autostart

sudo chmod +x ~/.autostart

echo -e "[Desktop Entry]\nEncoding=UTF-8\nType=Application\nName=Pantheon\nComment=Arch Linux variation of Pantheon\nExec=~/.autostart" >> pantheon.desktop
sudo mv pantheon.desktop /usr/share/xsessions/pantheon.desktop

echo -e "Enabling Wallpaper..."

gsettings set org.gnome.desktop.background file:///usr/share/wallpapers/elementary/'Sunset by the Pier.jpg'

echo -e "\nDone installing Pantheon. Please Reboot and Enjoy Pantheon!\n"
