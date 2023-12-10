#!/bin/bash

check "~/.sdkman" && return 0

curl -s "https://get.sdkman.io" | bash

echo 'source "~/.sdkman/bin/sdkman-init.sh"' >> ~/.bashrc

source "~/.sdkman/bin/sdkman-init.sh"

sdk install java 21.ea.35-open
yes | sdk default java 21.ea.35-open

