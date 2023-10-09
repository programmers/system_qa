#!/bin/bash

source "$proj/check" && check "$HOME/.sdkman/candidates/java/current/bin/java" && return 0

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java # latest 