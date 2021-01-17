printf_c "Installing Other Programs"

bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)" # Kite Installer

# Apps saved in Apps directory
cd $HOME
mkdir Apps

echo "Installing Sherlock"
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt
# Install Sherlock Utility
