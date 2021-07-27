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

## Possible improvements
- Divide global from local python dependencies
