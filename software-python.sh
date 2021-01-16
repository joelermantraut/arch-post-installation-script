echo
echo "Running Python Dependencies Installation"
echo

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

echo
echo "Python Dependencies Installed"
echo

