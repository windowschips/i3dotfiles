## ModernDark - Dotfiles to create an almost full-fledged desktop based on i3 window manager.
### Credit:
[Milad Fakurian](https://unsplash.com/@fakurian) on [Unsplash](https://unsplash.com) for all wallpapers included

[adi1090x](https://github.com/adi1090x/rofi) on GitHub for rofi menus
### Showcase:
This includes dynamic tiling for i3, clipboard history, applications menu, compositor animations, screenshotting tool with cool effects, and much more.

> [!NOTE]  
> This video is extremely outdated! Please wait while I upload a new showcase.

https://github.com/windowschips/i3dotfiles/assets/137562618/c3c95a95-fc9d-4222-9197-a9fd4c329fff

### Before you use:
- Tested on ASUS F555L Laptop with:
  - Fedora Workstation 39
  - Fedora Everything 39 (with Fedora i3 software)
- Made for use with **one 1920x1080** monitor. Adjustments to the configs will be neccessary for higher/lower resolutions and/or more monitors.
- Make sure to read all sections of this file so no confusion occurs.
- These dotfiles are not meant to be used as is, and you may have to make some changes if you have a different setup from mine.
- Upon installing, you may have to set the wallpaper from nitrogen manually.

### Programs:
Most of the necessary programs are listed in the dropdown below. If you don't want to use a specific program, you can try editing the configs and substituting the program. If I missed any program, [make issue](https://github.com/windowschips/i3dotfiles/issues) on the repository and I will add it to the section.

<details><summary>You may need these packages/programs...</summary>

Necessary:
- [i3](https://i3wm.org/)
- [kitty](https://github.com/kovidgoyal/kitty)
- polybar
- mate-polkit
- [dunst](https://github.com/dunst-project/dunst) (notifications)
- rofi (powermenu and app launcher)
- xss-lock (laptop shenanigans)
- systemd (systemctl needed)
- pulseaudio-utils (pactl needed)
- NetworkManager
- maim (screenshot)

Eyecandy / QoL:
- [autotiling](https://github.com/nwg-piotr/autotiling) (makes i3 behave like a dynamic tiling wm)
- picom
- [unclutter-xfixes](https://github.com/Airblader/unclutter-xfixes) (autohide mouse cursor)
- [nitrogen](https://github.com/l3ib/nitrogen/) (wallpaper)
- xclip (screenshot copy)
- cava (for polybar)

Substitutable:
- [Ubuntu Nerd Font](https://www.nerdfonts.com/font-downloads) (substitute for other nerd fonts if needed)
- [clipse](https://github.com/savedra1/clipse) (clipboard history)
- [shadower](https://github.com/n3oney/shadower) (fancy screenshot effects)
- xlock (xlockmore package)
- gnome-calendar (for date module of polybar)
- pavucontrol (for pulseaudio module of polybar)
- [bluetui](https://github.com/pythops/bluetui) (for bluetooth module of polybar)
- [tomato.c](https://github.com/gabrielzschmitz/Tomato.C) (for pomodoro module of polybar)
- brightnessctl (for brightness module of polybar)
- xmodmap (currently using to bind `end` to `esc` on my laptop because the `esc` key is damaged)

For polybar autohide:
- xev
- xwininfo
- xdotool

Optionally you can install:
- neofetch
- papirus-icon-theme
- bibata cursors
- adw-gtk3-dark
</details>

### Install the configs:
Make sure you have GNU Stow installed. After which you can follow these steps:
- Clone repository into **your home folder**, and rename it to `.dotfiles`.
- `cd` into the `.dotfiles` folder.
- Run `./stow.sh`. This will symlink the files (GTK configs, rofi menus, i3 config, etc.) to their locations.
- Login into i3! 
### FAQ
I don't know how to use your i3 config.

^ Press Win+Space and open your favorite text editor. Use it to view the i3 config file and see the keybindings. If you want, you can change the keybinds also and reset the desktop (picom, i3, dunst, etc) with Win+R. Show off to your friends using the screenshot tool by pressing Win+Shift+S. The screenshot will be copied to clipboard.

I changed the names, locations, etc of the directories, now my configs is broken.

^ No worries, run `./stow.sh` again and all should be fixed.