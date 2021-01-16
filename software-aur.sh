echo
echo "Running AUR Software Installation"
echo

cd "${HOME}"

#echo "CLOING: AURIC"
#git clone "https://github.com/rickellis/AURIC.git"

PKGS=(

    # UTILITIES -----------------------------------------------------------

    'dropbox'                   # Cloud file storage
    'roficlip'
    'clipster'
    'brave'
    'franz'
    'foxitreader'
    'unetbootin'

    # TERMINAL ------------------------------------------------------------

    'hollywood'

    # SETTINGS

    'grub-customizer'

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor
    'truestudio'
    'ttf-jetbrains-mono'        # Jetbrains Installer
    'prepros-bin'

    # MEDIA ---------------------------------------------------------------

    'spotify'                   # Music player

    # THEMES --------------------------------------------------------------

    'gtk-theme-arc-git'
    'adapta-gtk-theme-git'
    'lightdm-webkit-theme-aether'
)

#cd ${HOME}/AURIC
#chmod +x auric.sh

#for PKG in "${PKGS[@]}"; do
    #./auric.sh -i $PKG
#done

# Install Yay before use AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

for PKG in "${PKGS[@]}"; do
    yay -S $PKG --noeditmenu --noconfirm
done

echo
echo "AUR Software Installed"
echo
