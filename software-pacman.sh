#!/bin/bash

. functions.sh

printf_c "Running Pacman Software Installation"

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel
    'pacman-contrib'

    # TERMINAL UTILITIES --------------------------------------------------

    'alacritty'             # Main terminal emulator
    'file-roller'           # Archive utility
    'gnome-keyring'         # System password storage
    #'gufw'                  # Firewall manager
    #'inxi'                  # System information utility
    'neofetch'              # Shows system info when you launch terminal
    'numlockx'              # Turns on numlock in X11
    #'openssh'               # SSH connectivity tools
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'htop'
    'gtop'
    'fzf'
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'lm_sensors'
    'fff'
    'exa'
    'lolcat'                # Banner on terminal start
    'figlet'                # Banner on terminal start
    'xdotool'
    'xsel'
    'scrot'
    'wmctrl'                # For polywins

    # DRIVES UTILITIES ------------------------------------------------------

    'udiskie'               # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
     # ALL THIS NEEDED FOR PENDRIVES AND DISKS
    'mtpfs'
    'gvfs-mtp'
    'gvfs-gphoto2'

    # GENERAL UTILITIES ---------------------------------------------------

    'pass'                  # Password manager
    'qutebrowser'
    'pcmanfm-gtk3'
    'qalculate-gtk'
    'libqalculate'
    'lxappearance'
    'picom'
    'feh'
    'trash-cli'
    'lxtask'
    'gpick'
    'obconf'

    # DEVELOPMENT ---------------------------------------------------------

    'apache'                # Apache web server
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'php'                   # Web application scripting language
    'php-apache'            # Apache PHP driver
    'python'                # Scripting language
    'python-pip'
    'gedit'
    'arduino'
    'arduino-cli'
    'arduino-avr-core'      # Arduino support
    'octave'
    'neovim'
    'codeblocks'

    # WEB TOOLS -----------------------------------------------------------

    'chromium'              # Web browser
    'firefox'               # Web browser
    'discord'

    # MEDIA ---------------------------------------------------------------

    'vlc'                   # Video player

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'nomacs'                # Image viewer
    'pinta'                 # Simple image editor

    # PRODUCTIVITY --------------------------------------------------------

    'mupdf'                  # PDF viewer

    # THEMES --------------------------------------------------------------

    'papirus-icon-theme'
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'noto-fonts-emoji'      # Rofimoji Emojis
    'ttf-anonymous-pro'

    # VIRTUALIZATION ------------------------------------------------------

    'virtualbox'
    'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Software from Pacman Installed"
