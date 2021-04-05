# Manual Installation
This is a guide on how to install Pantheon manually on Arch Linux. Believe it or not, I made the script first before this. This guide is based on that script. Pretty epic right?

This is also the first time I'm making something like this (using git, making guides, *bash scripting* and whatnot) Tips are appreciated!

<i>Since it's my first time writing a guide like this, I may have missed something completely, or some instructions aren't clear. Please tell me if that's the case. If something went wrong, you can ask me but I cannot guarantee if I can fix all problems.</i>

First make sure you have synced the latest database and updated to latest packages:
```
sudo pacman -Syu
```
Now we install the packages. The ones we're gonna install are Pantheon's window manager, top bar, dock, settings manager, etc.

Let's install all of those:
```
sudo pacman -S gala plank wingpanel pantheon-applications-menu pantheon-terminal pantheon-files switchboard sound-theme-elementary capnet-assist wingpanel-indicator-datetime wingpanel-indicator-session wingpanel-indicator-power wingpanel-indicator-sound wingpanel-indicator-notifications wingpanel-indicator-network wingpanel-indicator-bluetooth wingpanel-indicator-nightlight wingpanel-indicator-keyboard switchboard-plug-a11y switchboard-plug-about switchboard-plug-applications switchboard-plug-bluetooth switchboard-plug-datetime switchboard-plug-desktop switchboard-plug-display switchboard-plug-keyboard switchboard-plug-mouse-touchpad switchboard-plug-network switchboard-plug-notifications switchboard-plug-online-accounts switchboard-plug-parental-controls switchboard-plug-power switchboard-plug-printers switchboard-plug-security-privacy switchboard-plug-sharing switchboard-plug-sound switchboard-plug-user-accounts
```
If you also want the available Pantheon default applications, install these:
```
sudo pacman -S epiphany pantheon-calculator pantheon-calendar pantheon-code pantheon-music pantheon-photos pantheon-screenshot pantheon-shortcut-overlay pantheon-videos
```

Now we configure Pantheon to make it look and behave like the original. First we install `pantheon-default-settings` from the AUR.

If you have an AUR helper, you can easily install it from there:
```
yay -S pantheon-default-settings
```
or
```
paru -S pantheon-default-settings
```
If you don't have one, let's install it with the traditional method.

If you haven't already, install `git` and `base-devel`:
```
sudo pacman -S git base-devel
```
clone the repository:
```
git clone https://aur.archlinux.org/pantheon-default-settings.git
```
cd into `pantheon-default-settings` and make:
```
cd pantheon-default-settings/
makepkg -si
```
We're done with that.

Now we are gonna make an autostart script, which starts the window manager, wingpanel and plank. Open your preferred text editor (in my case, vim) and create `~/.autostart`. Add these inside the file:
```
wingpanel &
plank &

exec gala
```
Add execute permissions so it can be executed by the display manager:
```
sudo chmod +x ~/.autostart
```
Then let's make a custom desktop entry. Open up your text editor again and create `/usr/share/xsessions/pantheon.desktop`. Add these inside the file:
```
[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Pantheon
Comment=Arch Linux variation of Pantheon
Exec=~/.autostart
```
Sometimes it will say the directory doesn't exist. Run `mkdir /usr/share/xsessions` if that's the case.

We are gonna set the default wallpaper now. Applications that can draw the wallpaper like nitrogen and feh won't work, we need to set the wallpaper using `gsettings`:
```
gsettings set org.gnome.desktop.background picture-uri <path-to-wallpaper>
```
Put the path of your preferred wallpaper on the last part (obviously). Pantheon's default wallpaper is `/usr/share/wallpapers/'Sunset by the Pier.jpg'`

Now let's set the terminal font. The terminal font will be too wide if we don't do this. Run:
```
gsettings set org.gnome.desktop.interface monospace-font-name 'Droid Sans Mono Regular 10'
```
Enjoy Pantheon on Arch Linux!
