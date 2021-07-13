#!/bin/bash

. functions.sh

printf_c "Running AUR Software Installation"

cd "${HOME}"

PKGS=(

    # UTILITIES -----------------------------------------------------------

    'dropbox'                   # Cloud file storage
    'roficlip'
    'clipster'
    'foxitreader'
    'unetbootin'
    'xdman'
    'google-chrome'
    'translate-shell'

    # TERMINAL ------------------------------------------------------------

    'hollywood'

    # SETTINGS

    'grub-customizer'
    'betterlockscreen'
    'polybar'

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor
    'truestudio'
    'ttf-jetbrains-mono'        # Jetbrains Installer
    'prepros-bin'

    # OCTAVE -------------------------------------------------------------

    'octave-symbolic'

    # PRODUCTIVITY -------------------------------------------------------

    'wps-office'
    'ttf-wps-fonts'

    # MEDIA ---------------------------------------------------------------

    'spotify'                   # Music player
    'jmtpfs'

    # THEMES --------------------------------------------------------------

    'gtk-theme-arc-git'
    'adapta-gtk-theme-git'
    'lightdm-webkit-theme-aether'
)

# Install Yay before use AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

for PKG in "${PKGS[@]}"; do
    yay -S $PKG --noeditmenu --noconfirm 2> ~/errors.txt
done

printf_c "AUR Software Installed"
