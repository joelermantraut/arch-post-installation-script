echo
echo "Running Setup"
echo

export HOME=/home/joel

./xorg.sh
./audio.sh
./desktop.sh
./software-pacman.sh
./software-aur.sh
./software-git.sh

echo "Installing Other Programs"
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)" # Kite Installer

sudo git clone "https://github.com/JoelErmantraut1/dotfiles.git"
sudo mv -f /dotfiles/* /home/joel

sudo systemctl enable lightdm

echo "All ready"
echo
echo "Don't forget to install:"
echo "-- z plugin for zsh"

echo
echo "Setup Done"
echo
