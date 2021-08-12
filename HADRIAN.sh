#!/bin/bash

dialog \
--backtitle "HADRIAN: About" \
--title "About" \
--msgbox "HADRIAN is a collection of bash scripts that conveniently installs the Pantheon desktop environment in Arch Linux.\n\nThe Pantheon package group is currently experiencing continuous changes as it is transitioning to being distro-agnostic.\n\nIf something changed and broke the script, please open an issue at GitHub!" 15 50

sh Stages/installation/INSTALLATION.sh
sh Stages/configuration/CONFIGURATION.sh