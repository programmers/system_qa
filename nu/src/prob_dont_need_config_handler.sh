#!/bin/bash

check_config() {
  local search_value="$1"
  local json_file="./src/config_ubuntu.json"
  local json_input=$(cat "$json_file")

  local result=$(echo "$json_input" | jq -r '.[] | select(.[] | .name == "'"$search_value"'" and (.included != false))')

  if [[ -n "$result" ]]; then
    echo "Value '$search_value' found in JSON."
  else
    echo "Value '$search_value' not found in JSON."
  fi
}
