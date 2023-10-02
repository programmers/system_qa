#!/bin/bash

# I don't need functions here ???

# Make packages in capital case
# need to deal with timeouts

# --c_and_cpp --cloud --containers_vms --database --go --java --javascript_and_node --php --python --ruby --rust --version_control --web

OS="ubuntu"

# source register_loaders.sh

source $HOME/repo/nu/src/checks/lookup_vscode_extension.sh
source $HOME/repo/nu/src/checks/lookup_general_package.sh

config_json=$(cat "$HOME/repo/nu/src/config_"$OS".json")

args="$1" 
args_array=$(echo '["'"$args"'"]')

ecosys_map_json=$(cat "./src/ecosystem_map.json")

for arg in $(echo "$args_array" | jq -r '.[]'); do
    ecosystem_key=$(echo "$ecosys_map_json" | jq -r --arg arg "$arg" '.[$arg]')
    echo "$config_json" | jq -c ".$ecosystem_key[]" | while read -r object; do
        name=$(jq -r    '.name'    <<< "$object")
        include=$(jq -r '.include' <<< "$object")
        about=$(jq -r   '.about'   <<< "$object")
        type=$(jq -r    '.type'    <<< "$object")
        creates=$(jq -r '.creates' <<< "$object")

        if [ "$include" == "false" ]; then
            continue
        fi

        if [ "$type" == "vscode_extension" ]; then 
            if lookup_vscode_extension "$creates"; then
                continue
            fi
        fi

        if [ "$type" == "package" ]; then 
            if lookup_general_package "$creates"; then
                continue
            fi
        fi

        sleep 0.5

        echo -e "\e[90m[$ecosystem_key]\e[0m \e[32mInstalling $name\e[0m ($about)"

        if [ $? -ne 0 ]; then
            echo -e "\e[31mFailure - check the log\e[0m"
        fi

        echo
    done
done