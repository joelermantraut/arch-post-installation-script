#!/bin/bash

. functions.sh

printf_c "Running Setup"

export HOME=/home/joel
# Declare variables

printf_c "Updating System"
# Before installing, we do complete update
sudo pacman -Syu --noconfirm --needed 2> ~/errors.txt

printf_c "Configuring MAKEPKG to use all 8 cores"
cd /etc/
sudo sed -i -e 's|[#]*MAKEFLAGS=.*|MAKEFLAGS="-j$(nproc)"|g' makepkg.conf
sudo sed -i -e 's|[#]*COMPRESSXZ=.*|COMPRESSXZ=(xz -c -T 8 -z -)|g' makepkg.conf
cd -

printf_c "Creating HOME folders"
# Create home directories
cd $HOME
mkdir Documentos
mkdir Documentos/Centro
mkdir Imagenes
mkdir Videos
mkdir Apps

# Start installing
cd $HOME/arch-post-installation-script
./xorg.sh
./audio.sh
./bluetooth.sh
./desktop.sh
./software-pacman.sh
./software-aur.sh
./software-git.sh
./software-python.sh
./software-general.sh
./setting_up.sh
./enable_services.sh

printf_c "All ready"

echo "Don't forget to:"
echo "-- Configure Grub"

printf_c "Setup Done"
