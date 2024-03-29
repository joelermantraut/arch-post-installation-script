#!/bin/bash

. functions.sh

printf_c "Running Python Dependencies Installation"

PKGS=(
    "screeninfo"                        # Screenshot script
    "neovim"
    "neovim-remote"                     # neovim
    "i3-py"                             # Used by many scripts
    "virtualenv"
    "Xlib"                              # Passmenu Rofi script
    "jedi-language-server"              # coc-pyjedi plugin
    "idle"
    # OCTAVE DEPENDENCIES
    "sympy==1.5.1"
)

for PKG in "${PKGS[@]}"; do
    echo "Installing Python: ${PKG}"
    pip install "$PKG"
done

printf_c "Python Dependencies Installed"
