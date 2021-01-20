printf_c "Installing Other Programs"

bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)" # Kite Installer

# Install Droid-Cam
wget -O droidcam_latest.zip https://files.dev47apps.net/linux/droidcam_1.7.1.zip
unzip droidcam_latest.zip -d droidcam
cd droidcam && sudo ./install-client
sudo ./install-video
sudo ./install-sound
pacmd load-module module-alsa-source device=hw:Loopback,1,0

# Apps saved in Apps directory
cd $HOME
mkdir Apps

echo "Installing Sherlock"
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt
# Install Sherlock Utility

printf_c "Other Software Installed"

