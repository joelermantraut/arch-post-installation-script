#!/bin/bash

. functions.sh

printf_c "Running AUR Software Installation"

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'nvidia-470xx-dkms'  

    # UTILITIES -----------------------------------------------------------

    'dropbox'                   # Cloud file storage
    'clipster'
    'brave-bin'
    'slack-desktop'
    'franz'
    'foxitreader'
    'anydesk-bin'

    # TERMINAL ------------------------------------------------------------

    'networkmanager-dmenu-git'
    'font-manager'

    # SETTINGS

    'grub-customizer'
    'betterlockscreen'
    'polybar-git'

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
    'candy-icons-git'
    'sweet-gtk-theme'
    'arch-silence-grub-theme-git'
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
