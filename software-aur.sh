#!/bin/bash

. functions.sh

printf_c "Running AUR Software Installation"

PKGS=(

    # UTILITIES -----------------------------------------------------------

    'dropbox'                   # Cloud file storage
    'clipster'
    'foxitreader'
    'unetbootin'
    #'xdman'
    'brave-bin'

    # TERMINAL ------------------------------------------------------------

    'hollywood'
    'networkmanager-dmenu-git'

    # SETTINGS

    'grub-customizer'
    'betterlockscreen'
    'polybar'

    # DEVELOPMENT ---------------------------------------------------------
    
    'truestudio'
    'prepros-bin'
    'sublime-text'              # Text editors

    # OCTAVE -------------------------------------------------------------

    'octave-symbolic'

    # PRODUCTIVITY -------------------------------------------------------

    'wps-office'

    # MEDIA ---------------------------------------------------------------

    'spotify-snap'                   # Music player
    'jmtpfs'

    # THEMES --------------------------------------------------------------

    'ttf-wps-fonts'
    'nerd-fonts-ubuntu-mono'
    'adapta-gtk-theme-git'
)

# Install Yay before use AUR
cd $HOME
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

for PKG in "${PKGS[@]}"; do
    yay -S $PKG --noeditmenu --noconfirm --removemake --cleanafter
done

printf_c "AUR Software Installed"
