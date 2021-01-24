#!/bin/bash

. functions.sh

printf_c "Running AUR Software Installation"

cd "${HOME}"

PKGS=(

    # UTILITIES -----------------------------------------------------------

    'dropbox'                   # Cloud file storage
    'roficlip'
    'clipster'
    'franz'
    'foxitreader'
    'unetbootin'
    'xdman'
    'google-chrome'
    'translate-shell'

    # TERMINAL ------------------------------------------------------------

    'hollywood'

    # SETTINGS

    'grub-customizer'

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor
    'truestudio'
    'ttf-jetbrains-mono'        # Jetbrains Installer
    'prepros-bin'

    # PRODUCTIVITY -------------------------------------------------------

    'wps-office'
    'ttf-wps-fonts'

    # MEDIA ---------------------------------------------------------------

    'spotify'                   # Music player

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
    yay -S $PKG --noeditmenu --noconfirm
done

printf_c "AUR Software Installed"
