echo
echo "Running Setup"
echo

export HOME=/home/joel
# Declare variables

./xorg.sh
./audio.sh
./desktop.sh
./software-pacman.sh
./software-aur.sh
./software-git.sh
./software-python.sh
./software-general.sh

sudo git clone "https://github.com/JoelErmantraut1/dotfiles.git"
cd dotfiles
sudo rm -r .git
sudo rm .gitignore
sudo rm README.md
cd ..
yes | sudo cp -r dotfiles/. $HOME
# Copy config files

cd $HOME
mkdir Documentos/Centro
mkdir Imagenes
mkdir Videos
# Create home directories

echo
echo "Configuring MAKEPKG to use all 8 cores"
sudo sed -i -e 's|[#]*MAKEFLAGS=.*|MAKEFLAGS="-j$(nproc)"|g' makepkg.conf
sudo sed -i -e 's|[#]*COMPRESSXZ=.*|COMPRESSXZ=(xz -c -T 8 -z -)|g' makepkg.conf

sudo systemctl enable lightdm

echo "All ready"
echo
echo "Don't forget to install:"
echo "-- z plugin for zsh"
echo "-- Configure Grub"

echo
echo "Setup Done"
echo
