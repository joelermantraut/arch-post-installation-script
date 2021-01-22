#!/bin/bash

. functions.sh

printf_c "Running Pacman Software Installation"

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel
    'urxvt'
    'xterm'

    # TERMINAL UTILITIES --------------------------------------------------

    'alacritty'             # Main terminal emulator
    'file-roller'           # Archive utility
    'gnome-keyring'         # System password storage
    'gufw'                  # Firewall manager
    'inxi'                  # System information utility
    'neofetch'              # Shows system info when you launch terminal
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    'speedtest-cli'         # Internet speed via terminal
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'konsole'               # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH
    'zsh-autosuggestions'
    'zsh-syntax-highlighting'
    'gawk'                  # For roficlip
    'htop'
    'gtop'
    'fzf'
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'lm_sensors'
    'bpython'
    'fff'

    # DISK UTILITIES ------------------------------------------------------

    'udiskie'               # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system

    # GENERAL UTILITIES ---------------------------------------------------

    'nitrogen'              # Wallpaper changer
    'pass'                  # Password manager
    'qutebrowser'
    'krusader'
    'pcmanfm'
    'ranger'
    'qalculate'
    'libqalculate'
    'rofimoji'
    'lxappearance'
    'picom'

    # DEVELOPMENT ---------------------------------------------------------

    'atom'                  # Text editor
    'apache'                # Apache web server
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'mariadb'               # Drop-in replacement for MySQL
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'php'                   # Web application scripting language
    'php-apache'            # Apache PHP driver
    'postfix'               # SMTP mail server
    'python'                # Scripting language
    'python-pip'
    'neovim'
    'gedit'
    'nano'
    'sublime-text'          # Text editors
    'kompare'

    # WEB TOOLS -----------------------------------------------------------

    'chromium'              # Web browser
    'firefox'               # Web browser
    'filezilla'             # FTP Client
    'flashplugin'           # Flash
    'discord'

    # MEDIA ---------------------------------------------------------------

    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player
    'flameshot'             # Screen capture.

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'nomacs'                # Image viewer
    'pinta'                 # Simple image editor

    # PRODUCTIVITY --------------------------------------------------------

    'xpdf'                  # PDF viewer

    # THEMES --------------------------------------------------------------

    'breeze'
    'papirus-icon-theme'

    # VIRTUALIZATION ------------------------------------------------------

    'virtualbox'
    'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Software from Pacman Installed"
