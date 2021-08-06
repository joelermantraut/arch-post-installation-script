#!/bin/bash

# Enable services
printf_c "Enabling Services"

sudo systemctl enable lightdm.service

sudo systemctl enable bluetooth.service

cp betterlockscreen@.service /etc/systemd/system/
systemctl enable betterlockscreen@$USER
betterlockscreen -u ~/Imagenes/slideshow -w

