#!/bin/bash

sys_check "$HOME/.sdkman" && exit 0

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"