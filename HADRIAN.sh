#!/bin/bash

set -e

# Generate HADRIAN Logo

while true
do
    clear

    echo 
    echo "  __  __     ______     _____     ______     __     ______     __   __     "
    echo " /\ \_\ \   /\  __ \   /\  __-.  /\  == \   /\ \   /\  __ \   /\ *-.\ \    "
    echo " \ \  __ \  \ \  __ \  \ \ \/\ \ \ \  __<   \ \ \  \ \  __ \  \ \ \-.  \   "
    echo "  \ \  __ \  \ \  __ \  \ \ \/\ \ \ \  __<   \ \ \  \ \  __ \  \ \ \-.  \  "
    echo "   \/_/\/_/   \/_/\/_/   \/____/   \/_/ /_/   \/_/   \/_/\/_/   \/_/ \/_/  "

    # Menu
    echo -e "\n\n [1] Install Pantheon"
    echo " [2] Uninstall Pantheon"
    echo " [3] Configure"
    echo -e " [4] Exit\n"

    read -p "Do: " -r
    case $REPLY in
        1)
            sh INSTALL.sh
            continue
            ;;
        2)
            sh UNINSTALL.sh
            continue
            ;;
        3)
            sh CONFIGURE.sh
            continue
            ;;
        4)
            exit 0
            ;;
        *)
            continue
            ;;
    esac
done

exit 0