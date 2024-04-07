## Welcome to the GitHub page of my i3 dotfiles.
### Showcase:
will upload soon
### Before you use:
- Only tested on Fedora Workstation 39, using ASUS F555L Laptop. I have only one monitor. (internal display)
- I am not responsible for any computer errors or damage, but feel free to make issue on the repository and I will try helping.
- Make sure to read all sections of this file so no confusion occurs.
- These dotfiles are not meant to be used as is, and you may have to make some changes if you have a different setup from mine.


With that being said, let's move on to how to install it.
### Applications and programs:
Most applications and programs which are required are listed in Requirements section. If you don't want to use a specific program, you can try editing the configs and substituting the program. If I missed any program, make issue on repository and I will add it to the section.

### Requirements:
<details><summary>You will need these programs. </summary>

- i3
- polybar
- picom
- pactl
- kitty
- rofi (powermenu and app launcher)
- maim
- xclip
- xlock (xlockmore package)
- xev
- xwininfo
- xdotool
- nitrogen
- networkmanager (nmtui is needed)
- systemctl (rofi power menu)
- shadower (fancy screenshot effects)
- gnome-calendar (for date module of polybar)
- light (if you have a better alternative that doesn't require root permissions, make an issue and tell me about it)
- bluetui (for bluetooth module of polybar)
- tomato.c (for pomodoro module of polybar)
- pavucontrol (for pulseaudio module of polybar)
- clipse (clipboard history)
- autotiling (makes i3 behave like a dynamic tiling wm)
- xss-lock (laptop shenanigans)
- twmn (notification daemon)
- xmousepasteblock (for some users it is not desired, so you can remove from i3 config)
- xfce-polkit
</details>

### Install the configs:
Make sure you have GNU Stow installed. After which you can follow these steps:
- Clone repository into **your home folder**, and rename it to `.dotfiles`.
- `cd` into the `.dotfiles` folder.
- Run `./stow.sh`. This will symlink the files (GTK configs, rofi menus, i3 config, etc.) to their locations.
- If it says `Stowing complete.` in your terminal, it is successful.
### FAQ
I don't know how to use your i3 configuration.

^ Press Win+Space and open your favorite text editor. Use it to view the i3 config file and see the keybindings. If you want, you can change the keybinds also and reset i3 with Win+R.

I changed the names, locations, etc of the directories, now my configurations is broken.

^ No worries, run `./stow.sh` again and all should be fixed.
