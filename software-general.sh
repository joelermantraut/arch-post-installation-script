printf_c "Installing Other Programs"

echo "Installing Sherlock"
cd $HOME/Apps
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt

echo "Installing Dmenu"
cd $HOME/Apps
git clone https://github.com/joelermantraut/dmenu-own-compilation.git
cd dmenu-own-compilation
make && sudo make install

echo "Installing Polybar Themes"
cd $HOME
$ git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
./setup.sh

echo "Installing Oh-My-Zsh"
cd $HOME
<sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)">
# Install oh-my-zsh

printf_c "Other Software Installed"

