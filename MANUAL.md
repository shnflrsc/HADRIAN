# Manual Installation
When I was an Arch newbie, I was trying so hard to install Pantheon. Everything didn't work with my knowledge, so I decided to wait until I'm more knowledgeable so I can figure out how to install it myself. Now here I am, making a guide for you! I see a lot of people on the internet having the same case as me, so I decided to make this guide. In this guide, you'll learn how to install the *Pantheon Desktop Environment* in Arch Linux.

*Fun fact: I made HADRIAN before even considering making an install guide. This guide is based off that script!*

First make sure you have synced the latest database and updated to latest packages:
```
sudo pacman -Syu
```
We need to install the essential applications. They are all available in the official repos so we just need to use pacman:
```
sudo pacman -S gala plank wingpanel pantheon-applications-menu pantheon-terminal pantheon-files switchboard sound-theme-elementary capnet-assist wingpanel-indicator-datetime wingpanel-indicator-session wingpanel-indicator-power wingpanel-indicator-sound wingpanel-indicator-notifications wingpanel-indicator-network wingpanel-indicator-bluetooth wingpanel-indicator-nightlight wingpanel-indicator-keyboard switchboard-plug-a11y switchboard-plug-about switchboard-plug-applications switchboard-plug-bluetooth switchboard-plug-datetime switchboard-plug-desktop switchboard-plug-display switchboard-plug-keyboard switchboard-plug-mouse-touchpad switchboard-plug-network switchboard-plug-notifications switchboard-plug-online-accounts switchboard-plug-parental-controls switchboard-plug-power switchboard-plug-printers switchboard-plug-security-privacy switchboard-plug-sharing switchboard-plug-sound switchboard-plug-user-accounts
```
If you also want to install the available Pantheon default applications:
```
sudo pacman -S epiphany pantheon-calculator pantheon-calendar pantheon-code pantheon-music pantheon-photos pantheon-screenshot pantheon-shortcut-overlay pantheon-videos
```

Now we configure Pantheon to make it look and behave like the original. `pantheon-default-settings` does most of that. Unfortunately it's only available in the AUR, so we'll need an AUR helper or use the official method to install it.
```
yay -S pantheon-default-settings
```
or
```
paru -S pantheon-default-settings
```
Official method: 
```
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/pantheon-default-settings.git
cd pantheon-default-settings/
makepkg -si
```

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
Then let's make a custom desktop entry, which is needed so the Display Manager displays Pantheon as an option on the login screen. Open up your text editor again and create `/usr/share/xsessions/pantheon.desktop`. Add these inside the file:
```
[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Pantheon
Comment=Arch Linux variation of Pantheon
Exec=~/.autostart
```
Sometimes it will say the directory doesn't exist. Run `mkdir /usr/share/xsessions` if that's the case.

Now we need to set the default wallpaper. Applications that can draw the wallpaper like nitrogen and feh won't work, we can set the wallpaper using `gsettings`:
```
gsettings set org.gnome.desktop.background picture-uri <path-to-wallpaper>
```
Put the path of your preferred wallpaper on the last part (obviously). Pantheon's default wallpaper is `/usr/share/wallpapers/'Sunset by the Pier.jpg'`

Now let's set the terminal font. The terminal font will be too wide if we don't do this. With `gsettings`, run:
```
gsettings set org.gnome.desktop.interface monospace-font-name 'Droid Sans Mono Regular 10'
```
You have reached the end of this guide. Enjoy Pantheon on Arch Linux!
