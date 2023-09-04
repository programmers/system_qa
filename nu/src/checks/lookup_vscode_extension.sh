#!/bin/bash

lookup_vscode_extension() {
    local extension=$1

    if [[ -n "$extension" ]]; then
        local installed_extensions=$(code --list-extensions)

        if ! echo "$installed_extensions" | grep -qi "$extension"; then
            echo "ILREADY INSTALLED"
            #code --install-extension "$extension" 2>/dev/null; # have to do this to suppress [DEP0005]
        else
            echo "NOT INSTALLED"
        fi
    fi
}