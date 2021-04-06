# HADRIAN
**HADRIAN** is an easy to use bash script that installs Pantheon on Arch Linux.

Use this script at your **OWN RISK!** I cannot confirm if Pantheon is stable enough for daily use or guarantee it will not start a ***thermonuclear war and eradicate all living beings***.

## Notes
This script doesn't provide X.org and a Display Manager. Make sure you have installed them before running HADRIAN!

As you can expect, Pantheon will not be complete. There will be some packages either missing, outdated or malfunctioning:

* Pantheon's E-Mail Client is only available on the AUR, last updated on 2019 and someone says it takes a ridiculous amount of time to compile. I think it's better to leave that one out.

* I don't think elementary OS' AppCenter is available on any Arch Linux repositories. Sucks.

* For some reason, Pantheon's LightDM Greeter wouldn't detect the custom desktop entry placed in `/usr/share/xsessions`. We'll use the default GTK Greeter for now.

## Installation
If you prefer to install Pantheon manually, proceed to [Manual Installation](https://github.com/furesuka/HADRIAN/blob/main/MANUAL.md).

First, I recommend inspecting the whole script right here on GitHub. That way, you can understand how it works or know what stuff to remove that doesn't fit your needs. (improvements also appreciated!)

Choose a suitable working directory. I recommend an empty folder in your home directory with your name of choice.
Now let's clone the Hadrian repository:

```
git clone https://github.com/furesuka/HADRIAN.git
```
cd into HADRIAN and run `install.sh`:
```
cd HADRIAN
sh install.sh
```
