#!/bin/bash

lookup_general_package() {
    local package=$1

    if [ -e "$package" ]; then
        return 0
    else
        return 1
    fi
}