#!/bin/bash

. functions.sh

printf_c "Running Desktop Installation Script"

PKGS=(
    'i3'
    'polybar'
    'fluxbox'
    'dmenu'
    'rofi'
    'dunst'
    'lightdm'
    'lightdm-gtk-greeter'
    'lightdm-webkit2-greeter'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed 2> ~/errors.txt
done

printf_c "Desktop Components Installed"
