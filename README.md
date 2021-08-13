![](https://github.com/furesuka/HADRIAN/blob/7ead8527628a195faff6003d4c9d7a82051ecb91/Screenshots/installation_stage.png)

## What is HADRIAN?

**HADRIAN** is a collection of batch scripts that conveniently installs the *Pantheon desktop environment* in Arch Linux.

***Why can't I just install it manually?***

The developers of Pantheon are hard at work trying to make it [distro-agnostic](https://github.com/orgs/elementary/projects/46). That means Pantheon will be much easier to install on other Linux Distributions other than elementary OS! Unfortunately, the experience still isn't perfect, so this script attempts to fix the issues in one convenient package.

It is recommended to use this script on a fresh installation of Arch Linux. Some packages and most of the options in the *CONFIGURATION stage* WILL mess up other desktop environments.

# Installation

HADRIAN requires the `dialog` package to display the terminal user interface.

```
sudo pacman -Syu && sudo pacman -S dialog
```

Clone the HADRIAN repository and run the script:

```
git clone -b next https://github.com/furesuka/HADRIAN.git && cd HADRIAN && sh HADRIAN.sh
```

# Links

[elementary OS](https://elementary.io/)

