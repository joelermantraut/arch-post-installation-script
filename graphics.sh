#!/bin/bash

. functions.sh

printf_c "Running Graphics Installation Script"

# First get graphics vendor

sudo pacman -S lshw

NVIDIA=$(lshw -C display | grep NVIDIA)
NVIDIA=${#NVIDIA}
AMD=$(lshw -C display | grep AMD)
AMD=${#AMD}
INTEL=$(lshw -C display | grep Intel)
INTEL=${#INTEL}
CERO=0

if [ $NVIDIA -gt $CERO ]; then

    PKGS=(
        'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'nvidia'
        'nvidia-utils'
        'opencl-nvidia'
        'nvidia-settings'
    )

elif [ $AMD -gt $CERO ]; then

    PKGS=(
        'mesa'                  # Open source version of OpenGL
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'xorg-server'           # XOrg server
        'xf86-video-amdgpu'     # 2D/3D video driver
        'lib32-vulcan-radeon'   # Needed for AMD GPUs
    )

elif [ $INTEL -gt $CERO ]; then

    PKGS=(
        'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'mesa'
        'xf86-video-intel'
        'intel-gpu-tools'
    )

fi

for PKG in "${PKGS[@]}"; do
    echo "Installing: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

printf_c "Graphics Components Installed"
