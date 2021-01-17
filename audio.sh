#!/bin/bash

. functions.sh

printf_c "Running Audio Installation Script"

PKGS=(
    'alsa-utils'        # Advanced Linux Sound Architecture (ALSA) Components https://alsa.opensrc.org/
    'alsa-plugins'      # ALSA plugins
    'pulseaudio'        # Pulse Audio sound components
    'pulseaudio-alsa'   # ALSA configuration for pulse audio
    'pavucontrol'       # Pulse Audio volume control
    'volumeicon'        # System tray volume control
)

for PKG in "${PKGS[@]}"; do
    echo "Installing ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Audio Components Installed"
