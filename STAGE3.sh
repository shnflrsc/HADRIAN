#!/bin/bash

clear

echo "STAGE 3: START" >> ./log

echo "STAGE 3 (DEFAULT APPLICATIONS)"

read -p " Install Pantheon's Default Applications? [y/n]: " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 0
fi

# Install Default Packages

sudo pacman -S pantheon-calculator pantheon-calendar pantheon-code pantheon-music pantheon-photos pantheon-screenshot pantheon-shortcut-overlay pantheon-videos

echo "STAGE 3: PACKAGES" >> ./log 
echo "STAGE 3: FINISHED" >> ./log 

read -t 2 -p "STAGE 3 (DEFAULT APPLICATIONS) COMPLETED!"

exit 0