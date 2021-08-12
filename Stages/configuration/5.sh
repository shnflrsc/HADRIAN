#!/bin/bash

clear
sudo sed -i '102i\greeter-session=io.elementary.greeter' /etc/lightdm/lightdm.conf

echo 
read -p "Set LightDM Greeter - Done!"