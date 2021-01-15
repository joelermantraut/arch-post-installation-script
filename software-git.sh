echo
echo "Running Git Software Installation"
echo

install_git () {
    git clone $1

    cd $2 

    chmod +x $3
    ./$3

    cd ..
    rm -r $2
}

# Install snap
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Install Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo
echo "Git Software Installed"
echo
