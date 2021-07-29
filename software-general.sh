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

echo "\nInstalling Polybar Themes\n"
cd $HOME
$ git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
./setup.sh

echo "\nInstalling Oh-My-Zsh\n"
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install oh-my-zsh

printf_c "Other Software Installed"

