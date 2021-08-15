#!/bin/bash

clear
sudo sed -i -e '$aHidden=true' /usr/share/applications/bvnc.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/bssh.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/avahi-discover.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/qv4l2.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/qvidcap.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/gda-browser-5.0.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/gda-control-center-5.0.desktop
sudo sed -i -e '$aHidden=true' /usr/share/applications/plank.desktop

echo 
read -p "Hide Originally Hidden Applications - Done!"
