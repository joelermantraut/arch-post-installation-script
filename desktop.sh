#!/bin/bash

. functions.sh

printf_c "Running Desktop Installation Script"

PKGS=(
    'i3-gaps'
    'rofi'
    'dunst'
    'lightdm'
    'lightdm-gtk-greeter'
    'lightdm-gtk-greeter-settings'
    'budgie-desktop'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Desktop Components Installed"
