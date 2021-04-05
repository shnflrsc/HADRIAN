#!/bin/bash

clear

echo "STAGE 1: START" >> ./log

echo " STAGE 1 (INSTALLATION)"

# exit when any command fails

set -e

# keep track of the last executed command

trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG

# echo an error message before exiting

trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

# Sync before proceeding

sudo pacman -Syu --noconfirm

echo "STAGE 1: SYNCED" >> ./log

# For some reason, lightdm-pantheon-greeter wouldn't detect the custom desktop entry placed in /usr/share/xsessions so we'll go with the default greeter for now
# First SET: Xorg and Display Manager
sudo pacman -S --noconfirm xorg xorg-xinit lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm

echo "STAGE 1: FIRST SET" >> ./log

# Set which greeter LightDM will use
sudo sed -i '102d' /etc/lightdm/lightdm.conf
sudo sed -i '102i\greeter-session=lightdm-gtk-greeter' /etc/lightdm/lightdm.conf

echo "STAGE 1: GREETER" >> ./log

# Second SET: Various Desktop Components
sudo pacman -S --noconfirm gala plank wingpanel pantheon-applications-menu pantheon-terminal pantheon-files switchboard sound-theme-elementary capnet-assist

echo "STAGE 1: SECOND SET" >> ./log

# Third SET: Wingpanel Indicators
sudo pacman -S --noconfirm wingpanel-indicator-datetime wingpanel-indicator-session wingpanel-indicator-power wingpanel-indicator-sound wingpanel-indicator-notifications wingpanel-indicator-network wingpanel-indicator-bluetooth wingpanel-indicator-nightlight wingpanel-indicator-keyboard

echo "STAGE 1: THIRD SET" >> ./log

# Fourth SET: Switchboard Plugs
sudo pacman -S --noconfirm switchboard-plug-a11y switchboard-plug-about switchboard-plug-applications switchboard-plug-bluetooth switchboard-plug-datetime switchboard-plug-desktop switchboard-plug-display switchboard-plug-keyboard switchboard-plug-mouse-touchpad switchboard-plug-network switchboard-plug-notifications switchboard-plug-online-accounts switchboard-plug-parental-controls switchboard-plug-power switchboard-plug-printers switchboard-plug-security-privacy switchboard-plug-sharing switchboard-plug-sound switchboard-plug-user-accounts

echo "STAGE 1: FOURTH SET" >> ./log 
echo "STAGE 1: FINISHED" >> ./log

read -t 2 -p " STAGE 1 (INSTALLATION) COMPLETED!"

exit 0