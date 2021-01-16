echo
echo "Running Setup"
echo

export HOME=/home/joel
# Declare variables

#./xorg.sh
#./audio.sh
#./desktop.sh
#./software-pacman.sh
#./software-aur.sh
#./software-git.sh
#./software-python.sh

echo "Installing Other Programs"
#bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)" # Kite Installer

sudo git clone "https://github.com/JoelErmantraut1/dotfiles.git"
cd dotfiles
sudo rm -r .git
sudo rm .gitignore
sudo rm README.md
cd ..
yes | sudo cp -r dotfiles/. $HOME

#sudo systemctl enable lightdm

echo
echo "Configuring MAKEPKG to use all 8 cores"
sudo sed -i -e 's|[#]*MAKEFLAGS=.*|MAKEFLAGS="-j$(nproc)"|g' makepkg.conf
sudo sed -i -e 's|[#]*COMPRESSXZ=.*|COMPRESSXZ=(xz -c -T 8 -z -)|g' makepkg.conf

echo "All ready"
echo
echo "Don't forget to install:"
echo "-- z plugin for zsh"

echo
echo "Setup Done"
echo
