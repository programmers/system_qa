#!/bin/bash

trap "rm -rf eclipse" EXIT

curl -sL https://download.eclipse.org/technology/epp/downloads/release/2022-09/M2/eclipse-php-2022-09-M2-linux-gtk-x86_64.tar.gz | tar -zx

mv eclipse /usr/bin/eclipse-php

cat << 'EOF' >> /usr/share/applications/eclipse-php.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse PHP
Comment=Eclipse for PHP developers
Exec=/usr/bin/eclipse-php/eclipse
Terminal=false
Type=Application
Categories=Utility;Development;
EOF