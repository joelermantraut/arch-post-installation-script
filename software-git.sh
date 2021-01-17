#!/bin/bash

. functions.sh

printf_c "Running Git Software Installation"

install_from_git () {
    git clone $1
    cd $2 
    
    chmod +x $3
    ./$3
    
    cd ..
    rm -r $2
}

make_from_git() {
    git clone $1
    cd $2
    makepkg -si --noconfirm
}

# Install snap
#git clone https://aur.archlinux.org/snapd.git
#cd snapd
#makepkg -si --noconfirm
make_from_git "https://aur.archlinux.org/snapd.git" "snapd"
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

printf_c "Git Software Installed"
