#!/bin/bash

source /home/mvim/repo/nu/src/checks/lookup_general_package.sh

if lookup_general_package "/usr/bin/eclipse-cpp"; then exit; fi

trap "rm -rf eclipse" EXIT

curl -sL https://download.eclipse.org/technology/epp/downloads/release/2022-09/M2/eclipse-cpp-2022-09-M2-linux-gtk-x86_64.tar.gz | tar -zx

mv eclipse /usr/bin/eclipse-cpp

cat << 'EOF' >> /usr/share/applications/eclipse-cpp.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse C++
Comment=Eclipse for C++ developers
Exec=/usr/bin/eclipse-cpp/eclipse
Terminal=false
Type=Application
Categories=Utility;Development;
EOF