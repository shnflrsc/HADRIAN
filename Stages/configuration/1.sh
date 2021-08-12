#!/bin/bash

clear
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
" > /etc/xdg/autostart/plank.desktop

echo 
read -p "Autostart Plank - Done!"