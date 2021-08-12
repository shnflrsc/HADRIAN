#!/bin/bash

dialog \
--stdout \
--backtitle "HADRIAN: About" \
--title "About" \
--msgbox "HADRIAN is a collection of bash scripts that conveniently installs the Pantheon desktop environment in Arch Linux.\n\nThe Pantheon package group is currently experiencing continuous changes as it is transitioning to being distro-agnostic.\n\nIf something changed and broke the script, please open an issue at GitHub!\n\nMake sure you are ready before proceeding." 16 60

sh Stages/installation/INSTALLATION.sh
sh Stages/configuration/CONFIGURATION.sh
sh Stages/end/END.sh