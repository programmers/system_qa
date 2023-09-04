#!/bin/bash

OS="ubuntu"

# SHOULD PROBABLY JUST CALL THIS SCRIPT RUNNER
# SHOULD PROBABLY JUST CALL THIS SCRIPT RUNNER
# SHOULD PROBABLY JUST CALL THIS SCRIPT RUNNER
# SHOULD PROBABLY JUST CALL THIS SCRIPT RUNNER
# SHOULD PROBABLY JUST CALL THIS SCRIPT RUNNER
# SHOULD PROBABLY JUST CALL THIS SCRIPT RUNNER

scripts_runner() {
    local ecosystem_key="$1"
    local config_json=$(cat "./src/config_"$OS".json")

    echo "$config_json" | jq -c ".$ecosystem_key[]" | while read -r object; do
        name=$(echo "$object" | jq -r '.name')
        include=$(echo "$object" | jq -r '.include')
        about=$(echo "$object" | jq -r '.about')

        script_filepath="./$OS/$ecosystem_key/$name.sh"

        if [ -e "$script_filepath" ] && [ "$include" != "false" ]; then
            title=""${ecosystem_key//_/ }""
            echo "[$title] Installing: $about"

            bash $script_filepath
        else
            echo "UH OH"
        fi
    done
}

ecosystem_parser() {
    local ecosys_map_json=$(cat "./src/ecosystem_map.json")
    local args="$1" 
    local args_array=$(echo '["'"$args"'"]')

    for arg in $(echo "$args_array" | jq -r '.[]'); do
        local key=$(echo "$ecosys_map_json" | jq -r --arg arg "$arg" '.[$arg]')
        scripts_runner "$key"
    done
}

ecosystem_parser "--rust"

#ecosystem_parser "--c_and_cpp --cloud --containers_vms --database --go --java --javascript_and_node --php --python --ruby --rust --version_control --web"