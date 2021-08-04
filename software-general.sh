printf_c "Installing Other Programs"

echo "\nInstalling Sherlock\n"
cd $HOME/Apps
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt

echo "\nInstalling Dmenu\n"
cd $HOME/Apps
git clone https://github.com/joelermantraut/dmenu-own-compilation.git
cd dmenu-own-compilation
make && sudo make install

#echo "\nInstalling Polybar Themes\n"
#cd $HOME
#$ git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
#cd polybar-themes
#chmod +x setup.sh
#./setup.sh

echo "\nInstalling Oh-My-Zsh\n"
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install oh-my-zsh

echo "\nInstalling Sublime Text\n"
cd $HOME
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
# Install GPG key
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text

printf_c "Other Software Installed"

