## Welcome to the GitHub page of my i3 dotfiles.
### Credit:
[Milad Fakurian](https://unsplash.com/@fakurian) on Unsplash for [wallpaper](https://unsplash.com/photos/a-black-and-white-photo-with-a-black-background-ek7Y_iOl3UQ)

[adi1090x](https://github.com/adi1090x/rofi) on GitHub for rofi menus
### Showcase:
This includes dynamic tiling for i3, clipboard history, applications menu, compositor animations, screenshotting tool with cool effects, and much much more.



https://github.com/windowschips/i3dotfiles/assets/137562618/c3c95a95-fc9d-4222-9197-a9fd4c329fff



..and this video is just a small part of the many features provided!
### Before you use:
- Only tested on Fedora Workstation 39, using ASUS F555L Laptop. I have only one monitor. (internal display)
- I am not responsible for any computer errors or damage, but feel free to make issue on the repository and I will try helping.
- Make sure to read all sections of this file so no confusion occurs.
- These dotfiles are not meant to be used as is, and you may have to make some changes if you have a different setup from mine.
- Upon installing, you may have to set the wallpaper from nitrogen manually.

### Programs:
Most of the necessary programs are listed in the dropdown below. If you don't want to use a specific program, you can try editing the configs and substituting the program. If I missed any program, make issue on repository and I will add it to the section.

<details><summary>You may need these packages/programs...</summary>

Necessary:
- i3
- kitty
- polybar
- xfce-polkit (some apps break without this)
- dunst (notifications)
- rofi (powermenu and app launcher)
- xss-lock (laptop shenanigans)
- systemd (systemctl needed) (also why the hate???)
- pulseaudio-utils (pactl needed)
- NetworkManager

Eyecandy / QoL:
- [autotiling](https://github.com/nwg-piotr/autotiling) (makes i3 behave like a dynamic tiling wm)
- picom (!!! use jonaburg fork !!!)
- [unclutter-xfixes](https://github.com/Airblader/unclutter-xfixes) (autohide mouse cursor)
- [nitrogen](https://github.com/l3ib/nitrogen/) (wallpaper)
- maim (screenshot)
- xclip (screenshot copy)

Substitutable:
- [clipse](https://github.com/savedra1/clipse) (clipboard history)
- [shadower](https://github.com/n3oney/shadower) (fancy screenshot effects)
- xlock (xlockmore package)
- gnome-calendar (for date module of polybar)
- pavucontrol (for pulseaudio module of polybar)
- [bluetui](https://github.com/pythops/bluetui) (for bluetooth module of polybar)
- [tomato.c](https://github.com/gabrielzschmitz/Tomato.C) (for pomodoro module of polybar)
- brightnessctl (for brightness module of polybar)

For polybar autohide:
- xev
- xwininfo
- xdotool

Optionally you can install:
- neofetch
</details>

### Install the configs:
Make sure you have GNU Stow installed. After which you can follow these steps:
- Clone repository into **your home folder**, and rename it to `.dotfiles`.
- `cd` into the `.dotfiles` folder.
- Run `./stow.sh`. This will symlink the files (GTK configs, rofi menus, i3 config, etc.) to their locations.
- If it says `Stowing complete.` in your terminal, it is successful.
### FAQ
I don't know how to use your i3 config.

^ Press Win+Space and open your favorite text editor. Use it to view the i3 config file and see the keybindings. If you want, you can change the keybinds also and reset the desktop (picom, i3, dunst, etc) with Win+R. Show off to your friends using the screenshot tool by pressing Win+Shift+S. The screenshot will be copied to clipboard.

I changed the names, locations, etc of the directories, now my configs is broken.

^ No worries, run `./stow.sh` again and all should be fixed.
