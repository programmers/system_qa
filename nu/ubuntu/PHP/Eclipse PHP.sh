#!/bin/bash

trap "eclipse-php-2022-03-R-linux-gtk-x86_64.tar.gz" EXIT

wget https://eclipse.mirror.triple-it.nl/technology/epp/downloads/release/2022-03/R/eclipse-php-2022-03-R-linux-gtk-x86_64.tar.gz

sudo tar -xzf eclipse-php-2022-03-R-linux-gtk-x86_64.tar.gz -C /opt/

sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse-php

echo "[Desktop Entry]
Name=Eclipse PHP
Type=Application
Exec=/usr/local/bin/eclipse-php
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment for PHP
Categories=Development;IDE;" | sudo tee /usr/share/applications/eclipse-php.desktop

sudo chmod +x /usr/share/applications/eclipse-php.desktop