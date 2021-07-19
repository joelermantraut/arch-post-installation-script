#!/bin/bash

. functions.sh

printf_c "Running Desktop Installation Script"

PKGS=(
    'i3'
    'fluxbox'
    'dmenu'
    'rofi'
    'dunst'
    'lightdm'
    'lightdm-webkit2-greeter'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Desktop Components Installed"
