#!/bin/bash

echo "This script will automatically install Pantheon and configure it to match the default experience."
echo "I will be installing: Xorg + LightDM with Pantheon Greeter + Pantheon Desktop Environment"

echo 
read -p "Press CTRL+C to exit or ENTER to Proceed."

echo 
echo "Starting in 5 seconds..."
sleep 5s

sudo pacman -Syyu --noconfirm
sudo pacman -S xorg-server lightdm lightdm-pantheon-greeter pantheon ttf-droid --noconfirm

# enable lightdm pantheon greeter
sudo sed -i '102i\greeter-session=io.elementary.greeter' /etc/lightdm/lightdm.conf
sudo systemctl enable lightdm

# add autostart entry for plank
sudo echo "[Desktop Entry]
Name=Plank
Comment=Stupidly simple.
Exec=plank
Icon=plank
Terminal=false
Type=Application
Categories=Utility;
NoDisplay=true
X-GNOME-Autostart-Notify=false
X-GNOME-AutoRestart=true
X-GNOME-Autostart-enabled=true
X-GNOME-Autostart-Phase=Panel
OnlyShowIn=Pantheon;
" > plank.desktop
sudo mv plank.desktop /etc/xdg/autostart/

# fix terminal font
gsettings set org.gnome.desktop.interface monospace-font-name 'Droid Sans Mono Regular 10'

# set default background
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/odin.jpg

# hide originally hidden applications
sudo sed -i -e '$aHidden=true' /usr/share/applications/bvnc.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/bssh.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/avahi-discover.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/qv4l2.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/qvidcap.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/gda-browser-5.0.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/gda-control-center-5.0.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/plank.desktop

echo 
echo "AUTOMATIC Installation - Done!"
echo "It is recommended to reboot after installation."