#!/bin/bash

. functions.sh

printf_c "Running Xorg Installation Script"

PKGS=(
    'xorg-server'           # XOrg server
    'xorg-apps'             # XOrg apps group
    'xorg-xinit'            # XOrg init
    'xf86-video-amdgpu'     # 2D/3D video driver
    'mesa'                  # Open source version of OpenGL
    'lib32-vulcan-radeon'   # Needed for AMD GPUs
)

for PKG in "${PKGS[@]}"; do
    echo "Installing: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed 2> ~/errors.txt
done

printf_c "Xorg Components Installed"
