#!/bin/bash

. functions.sh

printf_c "Running Setup"

export HOME=/home/joel
# Declare variables
cd $HOME
touch errors.txt
cd - # Back to script folder
# Create errors file

# Before installing, we do complete update.
sudo pacman -Syu --noconfirm --needed 2> ~/errors.txt

printf_c "Configuring MAKEPKG to use all 8 cores"

cd /etc/
sudo sed -i -e 's|[#]*MAKEFLAGS=.*|MAKEFLAGS="-j$(nproc)"|g' makepkg.conf
sudo sed -i -e 's|[#]*COMPRESSXZ=.*|COMPRESSXZ=(xz -c -T 8 -z -)|g' makepkg.conf

# Start installing
./xorg.sh
./audio.sh
./desktop.sh
./software-pacman.sh
./software-aur.sh
./software-git.sh
./software-python.sh
./software-general.sh

printf_c "Creating folders and copying files"

git clone https://github.com/joelermantraut/dotfiles.git
cd dotfiles
yes | rm -r .git
yes | rm .gitignore README.md
cd ..
yes | cp -r dotfiles/. $HOME
# Copy config files

cd $HOME
mkdir Documentos
mkdir Documentos/Centro
mkdir Imagenes
mkdir Videos
# Create home directories

# Copy images to directory
cd Imagenes
git clone https://github.com/joelermantraut/wallpapers.git
mv wallpapers slideshow # Change name

printf_c "Enabling Services"

sudo systemctl enable lightdm.service

systemctl --user enable spotblock
systemctl --user start spotblock

cp betterlockscreen@.service /etc/systemd/system/
systemctl enable betterlockscreen@$USER
systemctl disable betterlockscreen@$USER

printf_c "All ready"

echo "Don't forget to install:"
echo "-- Configure Grub"

printf_c "Setup Done"
