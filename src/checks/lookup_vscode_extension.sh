#!/bin/bash


lookup_vscode_extension() {
    local extension=$1
    local installed_extensions=$(code --list-extensions)
    
    if ! echo "$installed_extensions" | grep -i "$extension"; then
        echo ">>>not found"
        return 1
    else
        echo ">>>found"
        return 0
    fi
}