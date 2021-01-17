#!/bin/bash

. functions.sh

printf_c "Running Desktop Installation Script"

PKGS=(
    'qtile'
    'fluxbox'
    'dmenu'
    'rofi'
    'dunst'
    'gdm'
    'lightdm'
    'lightdm-webkit2-greeter'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Desktop Components Installed"
