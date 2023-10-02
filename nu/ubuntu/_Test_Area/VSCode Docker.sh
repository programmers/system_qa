#!/bin/bash

. /home/mvim/repo/nu/src/checks/check # make it checks plural

if lookup_vscode_extension "ms-azuretools.vscode-docker"; then exit; fi

code --install-extension ms-azuretools.vscode-docker 