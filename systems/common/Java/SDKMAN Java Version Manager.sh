#!/bin/bash

#source "$proj/check" && check "$HOME/.sdkman" && return 0

curl -s "https://get.sdkman.io" | bash

echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.bashrc

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 21.ea.35-open
yes | sdk default java 21.ea.35-open

