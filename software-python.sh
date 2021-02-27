#!/bin/bash

. functions.sh

printf_c "Running Python Dependencies Installation"

PKGS=(
    "psutil"
    "numpy"
    "pynput"
    "mouse"
    "keyboard"
    "screeninfo"
    "selenium"
    "pypdf2"
    "pygame"
    "pyautogui"
    "selenium"
    "neovim-remote"
    # OCTAVE DEPENDENCIES
    "sympy==1.5.1"
)

for PKG in "${PKGS[@]}"; do
    echo "Installing Python: ${PKG}"
    pip install "$PKG" 2> ~/errors.txt
done

printf_c "Python Dependencies Installed"
