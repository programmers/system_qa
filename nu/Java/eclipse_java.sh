#!/bin/bash

trap "rm -rf eclipse" EXIT

curl -sL https://download.eclipse.org/technology/epp/downloads/release/2022-09/M2/eclipse-java-2022-09-M2-linux-gtk-x86_64.tar.gz | tar -zx

mv eclipse /usr/bin/eclipse

cat << 'EOF' >> /usr/share/applications/eclipse.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse
Comment=Eclipse for Java developers
Exec=/usr/bin/eclipse/eclipse
Terminal=false
Type=Application
Categories=Utility;Development;
EOF