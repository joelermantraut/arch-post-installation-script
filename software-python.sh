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
)

for PKG in "${PKGS[@]}"; do
    echo "Installing Python: ${PKG}"
    pip install "$PKG"
done

printf_c "Python Dependencies Installed"
