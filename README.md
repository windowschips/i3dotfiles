## ModernDark - Dotfiles to create an almost full-fledged desktop based on i3 window manager.

### Showcase

> [!NOTE]  
> This video is extremely outdated! Please wait while I upload a new showcase.

https://github.com/windowschips/i3dotfiles/assets/137562618/c3c95a95-fc9d-4222-9197-a9fd4c329fff

### Read before installing
- Tested on an Asus F555L laptop with:
  - Fedora Workstation 39
  - Fedora Everything 39 & 40
- Made for use with **one 1920x1080** monitor. Adjustments may be neccessary for higher/lower resolutions and/or more monitors.
- Make sure to read every part of this README to minimize any obstacles during installation.

### Programs
Most of the necessary programs are listed in the dropdown below. If you don't want to use a specific program, you can substitute the program and edit the configs to reflect those changes. If there is a mistake in this list, [make an issue](https://github.com/windowschips/i3dotfiles/issues) so I can fix it as soon as possible.

<details><summary>Program/package list</summary>

---

- [i3](https://i3wm.org/)
- [autotiling](https://github.com/nwg-piotr/autotiling)
---
- [kitty](https://github.com/kovidgoyal/kitty)
- neofetch
- [picom jonaburg fork](https://github.com/jonaburg/picom)
---
- polybar
- rofi
- [rofi-calc](https://github.com/svenstaro/rofi-calc)
- [dunst notification daemon](https://github.com/dunst-project/dunst)
---
- mate-polkit (substitute for a different polkit if desired)
---
- [slock (screen locker)](https://tools.suckless.org/slock/)
- xss-lock (sleep lock)
---
- [unclutter-xfixes](https://github.com/Airblader/unclutter-xfixes) (autohide mouse cursor)
- [xmousepasteblock](https://github.com/milaq/XMousePasteBlock) (if needed)
---
- pulseaudio-utils (pactl needed) & pavucontrol
- playerctl (polybar)
- cava (for polybar)
---
- NetworkManager & nmtui
- blueman-applet & bluetoothctl & [bluetui](https://github.com/pythops/bluetui)
---
- maim
- [shadower](https://github.com/n3oney/shadower) (fancy screenshot effects)
- xclip (screenshot copy)
---
- [nitrogen](https://github.com/l3ib/nitrogen/) (wallpaper)
---
- [clipse](https://github.com/savedra1/clipse) (clipboard history)
---
- xev
- xwininfo
- xdotool
---
- [Ubuntu Nerd Font](https://www.nerdfonts.com/font-downloads) (substitute for other nerd fonts if desired)
---
</details>

### Installation
Requirements:
- GNU Stow

Follow these steps:
- Clone repository into **your home folder**, and make sure its name is ".dotfiles". `git clone https://github.com/windowschips/i3dotfiles.git ~/.dotfiles`
- Change directory into it. `cd ~/.dotfiles`
- Run "stow.sh". This will symlink the important configs to their locations. `./stow.sh`
- Login into i3! - `startx` or use your display manager
### Post-install

Some basic keybinds are:
- Super + Space : Apps menu
- Super + R     : Reload desktop
- Super + Shift/Ctrl + S : Screenshot area/fullscreen
- The rest can be viewed in the i3 config (~/.dotfiles/layout/i3/config).

You should:
- Set the wallpaper in nitrogen
- Create a file named .owm-key in ~, and change the weather location in ~/.dotfiles/layout/polybar/weather-plugin.sh
- Set up themes, cursors and icons of your choice.

### Credits
[Milad Fakurian](https://unsplash.com/@fakurian) on [Unsplash](https://unsplash.com) for all wallpapers included

[Aditya Shakya (adi1090x)](https://github.com/adi1090x/rofi) for Rofi menus