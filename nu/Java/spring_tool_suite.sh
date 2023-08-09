#!/bin/bash

trap "rm -rf sts-4.15.2.RELEASE" EXIT

curl -sL https://download.springsource.com/release/STS4/4.15.2.RELEASE/dist/e4.24/spring-tool-suite-4-4.15.2.RELEASE-e4.24.0-linux.gtk.x86_64.tar.gz | tar -zx

mv sts-4.15.2.RELEASE eclipse

mv eclipse /usr/bin/eclipse-sts

cat << 'EOF' >> /usr/share/applications/eclipse-sts.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse Spring Tool Suite
Comment=Eclipse for Spring Tool Suite developers
Exec=/usr/bin/eclipse-sts/eclipse/SpringToolSuite4
Terminal=false
Type=Application
Categories=Utility;Development;
EOF
