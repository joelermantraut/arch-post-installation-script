#!/bin/bash

# Install Neovim and dependencies
sudo pacman -S neovim --noconfirm --needed
pip3 install neovim

# Install plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install all plugins
nvim +PlugInstall +qall
nvim +"CocInstall coc-sh coc-clangd coc-css coc-go coc-html coc-tsserver coc-json coc-jedi"
