#!/bin/bash

sys_check "$HOME/.sdkman/candidates/gradle/current/bin/gradle" && exit 0

sdk install gradle 8.5