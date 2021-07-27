#!/bin/bash

printf_c "Setting Up"

# Copy config files
git clone https://github.com/joelermantraut/dotfiles.git
cd dotfiles
yes | rm -r .git
yes | rm .gitignore README.md
cd ..
yes | cp -r dotfiles/. $HOME

# Copy images to directory
cd Imagenes
git clone https://github.com/joelermantraut/wallpapers.git
mv wallpapers slideshow # Change name

# Links script to path
ln -sf $HOME/.config/scripts/dmenu_run_styled /usr/local/bin
ln -sf $HOME/.config/scripts/dmenu_styled /usr/local/bin
ln -sf $HOME/.config/scripts/gcopy /usr/local/bin
ln -sf $HOME/.config/scripts/zsh_history_fix /usr/local/bin
