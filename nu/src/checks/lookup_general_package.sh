#!/bin/bash

lookup_general_package() {
    local package=$1

    #if [ -e "/usr/bin/python" ]; then
    if [ -e "$package" ]; then
        echo "exists."
    else
        echo "does not exist."
    fi
}