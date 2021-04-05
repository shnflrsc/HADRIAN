#!/bin/bash

clear

# Cool Logo

echo 
echo "  __  __     ______     _____     ______     __     ______     __   __     "
echo " /\ \_\ \   /\  __ \   /\  __-.  /\  == \   /\ \   /\  __ \   /\ *-.\ \    "
echo " \ \  __ \  \ \  __ \  \ \ \/\ \ \ \  __<   \ \ \  \ \  __ \  \ \ \-.  \   "
echo "  \ \  __ \  \ \  __ \  \ \ \/\ \ \ \  __<   \ \ \  \ \  __ \  \ \ \-.  \  "
echo "   \/_/\/_/   \/_/\/_/   \/____/   \/_/ /_/   \/_/   \/_/\/_/   \/_/ \/_/  "

# Packages that will be installed
echo -e "\n\n Applications that will be Installed:\n"
echo "  xorg, lightdm, lightdm-gtk-greeter"
echo "  gala, plank, wingpanel and indicators, switchboard and plugs"
echo -e "  [optional] default applications for elementary OS\n\n"

# Confirm if user really wants to install Pantheon
read -p " Install Pantheon? [y/n]: " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit
fi

sh STAGE1.sh
sh STAGE2.sh
sh STAGE3.sh

echo -e "\n Enjoy Pantheon!"
