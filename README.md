# HADRIAN
**HADRIAN** is an easy to use bash script that installs Pantheon on Arch Linux.

Use this script at your **OWN RISK!** I made this script with *very little* scripting experience and with the help of a search engine and other helpful sources. I cannot confirm if it is stable enough for daily use or guarantee it will not start a ***thermonuclear war and eradicate all living beings***.

## Notes
For some reason, Pantheon's LightDM Greeter wouldn't detect the custom desktop entry placed in `/usr/share/xsessions`. We'll use the default GTK Greeter for now.

Pantheon's E-Mail Client is only available on the AUR, and one of the comments say it takes a ridiculous amount of time to compile. I think it's better to leave that one out.

I don't think elementary OS' AppCenter is available on any Arch Linux repositories. This sucks!

This script doesn't provide X.org and a Display Manager. Make sure you have installed them before running HADRIAN!
## Installation
If you prefer to install Pantheon manually, proceed to [Manual Installation](https://github.com/furesuka/HADRIAN/blob/main/MANUAL.md).

First, I recommend inspecting the script first right here on GitHub. That way, you can understand how it works, add your own stuff or know what stuff to remove that doesn't fit to your needs. (improvements also appreciated!)

Choose a suitable working directory. I recommend an empty folder in your home directory with your name of choice.
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
