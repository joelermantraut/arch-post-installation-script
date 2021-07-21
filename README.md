# arch-post-installation-script
A group of scripts to run after a clean installation of Arch Linux.

Based in [ArchMatic](https://github.com/rickellis/ArchMatic).

## Description
It installs all the utilities and applications that I used to have. Also, it clones my config files from my
repository and places them in the correct places.

It doesn't include installation of bluetooth or printers, because I didn't need them. 

## List of contents
The files and their content are:

- xorg.sh: Files for XOrg installation and utilities ot extras related.
- audio.sh: Pulseaudio and alsa utilities.
- desktop.sh: i3 and fluxbox windows managers. Lightdm as session manager.
- software-* files: Install software from Pacman, AUR (using Yay helper for complete automation), Python PIP and
other stuff (general).
- functions.sh: Includes common functions.
- setup.sh: Main file. If you want to install all, run this file. It clones my config files and replaces
the files in home directory.

## Usage
After Arch Linux installation, clone this repository and run the script/s. Take care that it will ask you for
sudo password many times, if you didn't disable sudo timeout. 

```c
    ./setup.sh
```

## After post-installation
There are some settings that cannot be scripted. For them, this sections describes my own method to do it.

### Set up pass repository
1. Copy .gnupg folder to home.
2. Download password repository cloning it in home folder.
3. Change its name to ".password-store".
4. In password repository, there is a ".gpg-id" file. Copy its content.
5. Run ```pass init {.gpg-id file copied content}```.
6. Test it with known passwords to be sure it is working.

### Setting up Sublime Text
1. Install it.
2. Copy config folder to $HOME/.config dir.
3. Open it.
4. Press ```Ctrl+Shift+P``` to open "Command Palette".
5. Run ```Install Package Control```
6. After that, run ```Install Package``` and search for these packages:
  - Emmet
  - Sass
  - Jade
  - AdvancedNewFile
  - ColorPick
  - SideBarEnhancements
  - BracketHightlighter

### Setting up Brave
1. Go to https://chrome.google.com/webstore/category/themes?hl=es, and install a theme (last used: Nebula).
2. Go to https://chrome.google.com/webstore/category/extensions?hl=es, and install this themes:
    - Vimium
    - One Tab
