printf_c "Installing Other Programs"

# Apps saved in Apps directory
cd $HOME
mkdir Apps
cd Apps

echo "Installing Sherlock"
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt
# Install Sherlock Utility

cd $HOME
<sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)">
# Install oh-my-zsh

printf_c "Other Software Installed"

