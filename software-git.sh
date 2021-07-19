#!/bin/bash

. functions.sh

printf_c "Running Git Software Installation"

install_from_git () {
    cd /tmp
    git clone $1
    cd $2
    
    chmod +x $3
    ./$3
    
    cd ..
    rm -r $2

    cd $HOME
}

make_from_git() {
    cd /tmp
    git clone $1
    cd $2
    makepkg -si --noconfirm
    cd $HOME
}

# Install snap
make_from_git "https://aur.archlinux.org/snapd.git" "snapd"
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Install Zoom
make_from_git "https://aur.archlinux.org/zoom.git" "zoom"

# Install ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

printf_c "Git Software Installed"
