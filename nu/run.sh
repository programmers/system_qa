#!/bin/bash


## MATTHEW FIRST THING:
##    1. get the bigger loop in place
##    2. implement the parser below
##    3. fix continue problem
##    4. plan to put all of this in the progsys script

#ecosystem_parser() {
    #local ecosys_map_json=$(cat "./src/ecosystem_map.json")
    #local args="$1" 
    #local args_array=$(echo '["'"$args"'"]')
#
    #for arg in $(echo "$args_array" | jq -r '.[]'); do
        #local key=$(echo "$ecosys_map_json" | jq -r --arg arg "$arg" '.[$arg]')
        #scripts_runner "$key"
    #done
#}
#
#ecosystem_parser "--rust"

#ecosystem_parser "--c_and_cpp --cloud --containers_vms --database --go --java --javascript_and_node --php --python --ruby --rust --version_control --web"

OS="ubuntu"

source $HOME/repo/nu/src/checks/lookup_vscode_extension.sh
source $HOME/repo/nu/src/checks/lookup_general_package.sh

config_json=$(cat "$HOME/repo/nu/src/config_"$OS".json")

ecosystem_key="_Test_Area"

echo "$config_json" | jq -c ".$ecosystem_key[]" | while read -r object; do
    name=$(jq -r '.name' <<< "$object")
    include=$(jq -r '.include' <<< "$object")
    about=$(jq -r '.about' <<< "$object")
    type=$(jq -r '.type' <<< "$object")
    creates=$(jq -r '.creates' <<< "$object")

    if [ "$include" == "false" ]; then
        continue
    fi

    if [ "$type" == "vscode_extension" ]; then 
        lookup_vscode_extension $creates

        if [ $? -ne 0 ]; then
            echo "Skipping $name"
            continue
        fi

        #switch to this
        #if ! lookup_vscode_extension "$creates"; then
        #    echo "Skipping $name"
        #    continue
        #fi

    fi

    if [ "$type" == "package" ]; then 
        lookup_general_package $creates

        if [ $? -ne 0 ]; then
            echo "Skipping $name"
            continue
        fi

        #switch to this
        #if ! lookup_general_package "$creates"; then
        #    echo "Skipping $name"
        #    continue
        #fi
    fi

    echo -e "\e[32m[$ecosystem_key] Installing $name\e[0m \e[90m($about)\e[0m"

    if [ $? -ne 0 ]; then
        echo -e "\e[31mFailure - check the log\e[0m"
    else
        echo -e "\e[93mSuccess\e[0m"
    fi

    echo
done