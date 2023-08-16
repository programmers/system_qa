#!/bin/bash
echo "asdf"
program=""
file_loc=""
vscode_extension=""

if [[ "$1" == "--program" ]]; then
    program=$2
elif [[ "$1" == "--file" ]]; then
    file_loc=$2
elif [[ "$1" == "--vscode_extension" ]]; then
    vscode_extension=$2
else
    exit 1 # "Missing or invalid option."

fi

if [[ -n "$vscode_extension" ]]; then
    extension_folder=$(find "$HOME/.vscode/extensions" -maxdepth 1 -type d -name "*$vscode_extension*")
    if [[ -n "$extension_folder" ]]; then
        echo "$vscode_extension is installed."
        exit 0 #return 0
    else
        echo "$vscode_extension is not installed."
        exit 1 #return 1
    fi
fi

if [[ -z "$program" ]]; then
    exit 1 #return "Missing program name."
fi

if command -v "$program" >/dev/null 2>&1; then
    exit 0 #return "ok"
fi

install_locations=(
    "/usr/bin/$program"
    "/usr/local/bin/$program"
    "/opt/$program"
)

for location in "${install_locations[@]}"; do
    if [[ -x "$location" ]]; then
        exit 0 #return "ok"
    fi
done

home_location="$HOME/$program"
if [[ -x "$home_location" ]]; then
    exit 0 #return "ok"
fi

dot_file="$HOME/.$program"
if [[ -x "$dot_file" ]]; then
    exit 0 # "ok"
fi

if [[ -x "$file_loc" ]]; then
    exit 0 #return "ok"
fi

exit 0 #return "not installed"


#check() {
    #local program
    #local file_loc
    #local vscode_extension
   # 
    #if [[ "$1" == "--program" ]]; then
        #program=$2
    #elif [[ "$1" == "--file" ]]; then
        #file_loc=$2
    #elif [[ "$1" == "--vscode_extension" ]]; then
        #vscode_extension=$2
    #else
        #return "Missing or invalid option."
#
    #fi
#
    #if [[ -n "$vscode_extension" ]]; then
        #local extension_folder=$(find "$HOME/.vscode/extensions" -maxdepth 1 -type d -name "*$vscode_extension*")
        #if [[ -n "$extension_folder" ]]; then
            #return "ok"
        #fi
       # 
        #local vscode_data_dir="$HOME/.vscode"
        #if [[ -d "$vscode_data_dir" ]]; then
            #local installed_extensions=$(grep -E '"publisherId":"\w+.*","name":"'"$vscode_extension"'"' "$vscode_data_dir/User/globalStorage/state.vscdb")
            #if [[ -n "$installed_extensions" ]]; then
                #return "ok"
            #fi
        #fi
       # 
        #return "not installed"
    #fi
   # 
    #if [[ -z "$program" ]]; then
        #return "Missing program name."
    #fi
   # 
    #if command -v "$program" >/dev/null 2>&1; then
        #return "ok"
    #fi
   # 
    #local install_locations=(
        #"/usr/bin/$program"
        #"/usr/local/bin/$program"
        #"/opt/$program"
    #)
   # 
    #for location in "${install_locations[@]}"; do
        #if [[ -x "$location" ]]; then
            #return "ok"
        #fi
    #done
   # 
    #local home_location="$HOME/$program"
    #if [[ -x "$home_location" ]]; then
        #return "ok"
    #fi
   # 
    #local dot_file="$HOME/.$program"
    #if [[ -x "$dot_file" ]]; then
        #return "ok"
    #fi
   # 
    #if [[ -x "$file_loc" ]]; then
        #return "ok"
    #fi
   # 
    #return "not installed"
#}
