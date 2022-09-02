#!/bin/bash

curl -sL https://dl.pstmn.io/download/latest/linux64 | tar -zx
mv Postman /usr/bin

cat << 'EOF' >> /usr/share/applications/postman.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Postman API Tool
Comment=Testing API
Exec=/usr/bin/Postman/Postman
Terminal=false
Type=Application
Categories=Utility;Development;
EOF