![](https://github.com/furesuka/HADRIAN/blob/128e5e9e8103f40dea1b91c536f6b1f40c8df623/Screenshots/installation%20stage.png)

**HADRIAN** is a collection of scripts that conveniently installs the *Pantheon desktop environment* in Arch Linux.

When installing Pantheon, deciding which packages you want or do not want and troubleshooting the issues that come after it is a lot of work. This script provides easy installation of packages you only need, fixes for common problems, and optional tweaks to make it as close as the default setup found in *elementary OS*.

It is recommended to use this script on a fresh installation of Arch Linux. Some packages and options in the configuration stage will mess up other desktop environments' configuration like GNOME.

# Installation

HADRIAN requires the `dialog` package to display the terminal user interface.

```
sudo pacman -Sy && sudo pacman -S dialog
```

Clone the HADRIAN repository and run the script:

```
git clone https://github.com/furesuka/HADRIAN.git
cd HADRIAN && sh HADRIAN.sh
```
