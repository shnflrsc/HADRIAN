#!/bin/bash

clear
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/bvnc.desktop"
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/bssh.desktop"
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/avahi-discover.desktop"
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/qv4l2.desktop"
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/qvidcap.desktop"
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/gda-browser-5.0.desktop"
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/gda-control-center-5.0.desktop"
echo "sudo sed -i -e '\$aHidden=true' /usr/share/applications/plank.desktop"

echo 
read -p "Hide Originally Hidden Applications - Done!"
