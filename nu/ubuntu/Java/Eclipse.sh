#!/bin/bash

source "$proj/check" && check "/usr/bin/eclipse" && return 0

trap "rm -rf eclipse" EXIT

wget https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2022-09/R/eclipse-java-2022-09-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz

tar -zxvf eclipse.tar.gz

sudo mv eclipse/eclipse /usr/bin/eclipse

sudo bash -c 'cat << EOF > /usr/share/applications/eclipse.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse
Comment=Eclipse IDE
Exec=/usr/bin/eclipse
Terminal=false
Type=Application
Categories=Utility;Development;
EOF'