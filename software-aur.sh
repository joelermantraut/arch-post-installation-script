#!/bin/bash

. functions.sh

printf_c "Running AUR Software Installation"

PKGS=(

    # UTILITIES -----------------------------------------------------------

    'dropbox'                   # Cloud file storage
    'clipster'
    'brave-bin'

    # TERMINAL ------------------------------------------------------------

    'hollywood'
    'networkmanager-dmenu-git'
    'pulseaudio-control'

    # SETTINGS

    'grub-customizer'
    'betterlockscreen'
    'polybar'

    # DEVELOPMENT ---------------------------------------------------------
    
    'truestudio'
    'prepros-bin'

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
    'nerd-fonts-iosevka'
    'ttf-icomoon-feather'
    'candy-icons-git'
    'sweet-gtk-theme'
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
