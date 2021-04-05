#!/bin/bash

clear

echo "STAGE 2: START" >> ./log

echo " STAGE 2 (CONFIGURATION)"

# exit when any command fails

set -e

# keep track of the last executed command

trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG

# echo an error message before exiting

trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

# Install git and base-devel if user hasn't already

sudo pacman -S --noconfirm git base-devel

echo "STAGE 2: GIT AND BASE-DEVEL" >> ./log

# Clone pantheon-default-settings

git clone https://aur.archlinux.org/pantheon-default-settings.git

echo "STAGE 2: CLONE" >> ./log

# Make pantheon-default-settings

(cd pantheon-default-settings/ && makepkg -si)

echo "STAGE 2: MAKE" >> ./log

# Make autostart script at home directory

echo -e "export TERM=io.elementary.terminal\n\nwingpanel &\nplank &\n\nexec gala" >> ~/.autostart

echo "STAGE 2: GENERATE AUTOSTART" >> ./log

# Make autostart executable
sudo chmod +x ~/.autostart

echo "STAGE 2: EXECUTABLE PERMISSION" >> ./log

# Make a custom Pantheon desktop session
echo -e "[Desktop Entry]\nEncoding=UTF-8\nType=Application\nName=Pantheon\nComment=Arch Linux variation of Pantheon\nExec=~/.autostart" >> pantheon.desktop

echo "STAGE 2: PANTHEON.DESKTOP" >> ./log

# Move pantheon.desktop to /usr/share/xsessions/

sudo mkdir -p /usr/share/xsessions/
sudo mv pantheon.desktop /usr/share/xsessions/pantheon.desktop

echo "STAGE 2: MOVE PANTHEON.DESKTOP" >> ./log

# Set Default Wallpaper

gsettings set org.gnome.desktop.background picture-uri file:///usr/share/wallpapers/elementary/'Sunset by the Pier.jpg'

echo "STAGE 2: BACKGROUND" >> ./log
echo "STAGE 2: FINISHED" >> ./log

read -t 2 -p "STAGE 2 (CONFIGURATION) COMPLETED!"

exit 0
