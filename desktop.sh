echo
echo "Running Desktop Installation Script"
echo

PKGS=(
    'qtile'
    'fluxbox'
    'dmenu'
    'rofi'
    'dunst'
    'gdm'
    #'lightdm'
    #'lightdm-gtk-greeter'
    #'lightdm-webkit2-greeter'
)

for PKG in "${PKGS[@]}"; do
    echo "Installing ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Desktop Components Installed"
echo
