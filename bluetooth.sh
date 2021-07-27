#!/bin/bash

. functions.sh

printf_c "Running Bluetooth Software Script" 

PKGS=(
    'bluez'
    'bluez-utils'
    'pulseaudio-bluetooth'
    'bluez-libs'
    'blueman'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Software for Bluetooth Installed" 
