#!/bin/bash

source ./src/config_handler.sh $1

install_vscode_extension() {
    local extension=$1

    if [[ -n "$extension" ]]; then
        local installed_extensions=$(code --list-extensions)

        if ! echo "$installed_extensions" | grep -qi "$extension"; then
            code --install-extension "$extension" 2>/dev/null; # have to do this to suppress [DEP0005]
        fi
    fi
}