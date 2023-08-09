#!/bin/bash

handle_error() {
    echo "Error occurred in script: $1. Continuing..."
}

trap 'handle_error $current_script' ERR

# run "path/to/script1.sh" can also do args like this

run() {
    current_script="$1"
    shift
    "$current_script" "$@" || true
}