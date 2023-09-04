#!/bin/bash

# make this self invoke

ecosystem_key=$(basename $(dirname "$0"))

OS="ubuntu"

#TYPE="vscode_extension"
TYPE="general_package"

source "$HOME/repo/nu/src/checks/lookup_vscode_extension.sh"
source "$HOME/repo/nu/src/checks/lookup_general_package.sh"

config_json=$(cat "$HOME/repo/nu/src/config_"$OS".json")

#    {
#      "name": "vscode_docker",
#      "include": true,
#      "type": "vscode_extension",
#      "creates": "purplestone.savebackup",
#      "about": "Docker extension for Visual Studio Code, providing Docker integration."
#    }

echo "$config_json" | jq -c ".$ecosystem_key[]" | while read -r object; do
    file=$(basename "$0")
    item="${file%.sh}"
    name=$(echo "$object" | jq -r '.name')
    if [ "$item" == "$name" ]; then
        include=$(echo "$object" | jq -r '.include')
        about=$(echo "$object" | jq -r '.about')
        creates=$(echo "$object" | jq -r '.creates')

        creates="/usr/bin/python"

        if [ "$TYPE" == "vscode_extension" ]; then 
            echo 123
            lookup_vscode_extension "$creates"
        fi

        if [ "$TYPE" == "general_package" ]; then 
            lookup_general_package "$creates"
        fi


        script_filepath="$HOME/repo/nu/$OS/$ecosystem_key/$name.sh"

        if [ -e "$script_filepath" ] && [ "$include" != "false" ]; then
            title=""${ecosystem_key//_/ }""
            echo "[$title] Installing: $about"

            #bash $script_filepath
            #bash "/home/mvim/repo/nu/src/tester.sh"
        else
            echo "UH OH"
        fi
    fi
done
