# HADRIAN
**HADRIAN** is an easy to use bash script that installs Pantheon on Arch Linux.

Use this script at your **OWN RISK!** I made this script with *very little* scripting experience and with the help of a search engine and other helpful sources. I cannot confirm if it is stable enough for daily use or guarantee it will not start a ***thermonuclear war and eradicate all living beings***.

## Issues
For some reason, Pantheon's LightDM Greeter wouldn't detect the custom desktop entry placed in `/usr/share/xsessions`. We'll use the default GTK Greeter for now.

## Installation
If you prefer to install Pantheon manually, proceed to [Manual Installation](https://github.com/furesuka/HADRIAN/blob/main/MANUAL.md).

First choose a suitable working directory. I recommend an empty folder in your home directory with your name of choice.
Now let's clone the Hadrian repository:

```
git clone https://github.com/furesuka/HADRIAN.git
```
cd into HADRIAN and run `install.sh`:
```
cd HADRIAN
```
```
sh install.sh
```
