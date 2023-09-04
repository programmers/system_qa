#!/bin/bash

# STEP 1 - ASSUME YOU HAVE THE OS ENV

OS="ubuntu"

# STEP 2 - READ IN THE FLAGS

ARGS="--cloud --database --web"

args_array=$(echo '["'$ARGS'"]')

echo $args_array | jq -r '.[] as $in | .[] | select($in == .) | .'


#result=$(echo "$args_array" | jq -r --argjson mapping "$json_mapping" '.[] | $mapping[.]')

#echo $result




# STEP 3 - LOAD CONFIG INTO MEMORY

# STEP 4 - LOOP ECOSYSTEMS

# STEP 5 - LOCATE THE SCRIPT

# STEP 6 - RUN SCRIPT

# STEP 7 - SHOW PROGRESS AND ERROR LOGS

# -----

# Internally, each script calls "install_vscode_extension.sh" or "install_package.sh"