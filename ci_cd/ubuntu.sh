#!/bin/bash

declare -A unit

## Base
unit["Terminator"]="/usr/bin/terminator"
unit["Screen"]="/usr/bin/screen"
unit["tmux"]="/usr/bin/tmux"
unit["htop"]="/usr/bin/htop"
unit["ripgrep"]="/usr/bin/rg"
unit["fzf"]="$HOME/.fzf"
unit["jq"]="/usr/bin/jq"
unit["Neovim"]="/usr/bin/nvim"
unit["Amix_Vim"]="$HOME/.vim_runtime/amix.lock"
unit["Doom_Emacs"]="$HOME/.config/emacs/bin/doom"
unit["7Zip"]="/usr/bin/7z"
unit["UnRAR"]="/usr/bin/unrar"
unit["Docs2Unix"]="/usr/bin/dos2unix"
unit["thefuck"]="/usr/local/bin/thefuck"
unit["VSCode_Code_Runner"]="$HOME/.vscode/extensions/%code-runner%"
unit["VSCode_Intellicode"]="$HOME/.vscode/extensions/%intellicode%"
unit["VSCode_Spellchecker"]="$HOME/.vscode/extensions/%spellchecker%"


## Python
unit["pyenv"]=""
unit["Pipenv"]=""
unit["Poetry"]=""
unit["pipx"]="/usr/local/bin/pipx"
unit["PyCharm"]="/snap/bin/pycharm-community"
unit["IPython"]="/usr/local/bin/ipython"
unit["Black"]="/usr/local/bin/black"
unit["Flake8"]="/usr/local/bin/flake8"
unit["VSCode_Python"]="$HOME/.vscode/extensions/%python%"


## Cloud
unit["AWS_CLI"]="/usr/local/bin/aws"
unit["Azure_CLI"]="/usr/bin/az"
unit["Google_Cloud_CLI"]="/snap/bin/gcloud"
unit["Digital_Ocean_CLI"]="/snap/bin/doctl"
#unit["Kubernetes_Kind"]=""
unit["Kubectl"]="/usr/bin/kubectl"
unit["Helm"]="/snap/bin/helm"
unit["Terraform"]="/snap/bin/terraform"


## Containers and VMs
unit["Virtualbox"]="/usr/bin/virtualbox"
unit["QEMU_KVM"]="/usr/bin/kvm"
unit["Docker"]="/usr/bin/docker"
unit["Docker_Compose"]="/usr/local/bin/docker-compose"
unit["VSCode_Docker"]="$HOME/.vscode/extensions/%docker%"


## Database Clients
unit["MySQL_Workbench"]="/snap/bin/mysql-workbench-community"
unit["DBeaver"]="/usr/bin/dbeaver"
unit["DataGrip"]="/snap/bin/datagrip"
#unit["pgAdmin_Desktop"]=""
unit["SQLite_Browser"]="/snap/bin/sqlitebrowser"
unit["Redis_Commander"]="/usr/local/bin/redis-commander"
unit["usql"]="/usr/bin/usql"

nvm_version="v21.5.0"

## JavaScript and Node
unit["Node_Version_Manager"]="$HOME/.nvm/versions/node/$nvm_version"
unit["Node_TypeScript"]="$HOME/.nvm/versions/node/$nvm_version/bin/tsc"
unit["Nodemon"]="$HOME/.nvm/versions/%node%"
unit["Yarn"]="$HOME/.nvm/versions/node/$nvm_version/bin/yarn"
unit["VSCode_Node"]="$HOME/.vscode/extensions/%node%"
unit["VSCode_JavaScript"]="$HOME/.vscode/extensions/%javascript%"
unit["VSCode_TypeScript"]="$HOME/.vscode/extensions/%typescript%"
unit["VSCode_ESLint"]="$HOME/.vscode/extensions/%eslint%"
unit["VSCode_Prettier"]="$HOME/.vscode/extensions/%prettier%"
unit["VSCode_Path_Intellisense"]="$HOME/.vscode/extensions/%path-intellisense%"


## Web Tools
unit["Angular_CLI"]=""
unit["Create_React_App"]="/usr/local/bin/create-react-app"
unit["Vue_CLI"]="/usr/local/bin/vue"
unit["Webstorm"]="/snap/bin/webstorm"
unit["Postman"]="/snap/bin/postman"
unit["ngrok"]="/snap/bin/ngrok"
unit["localtunnel"]="$HOME/.nvm/versions/node/$nvm_version/bin/lt"
unit["Local_Web_Server"]="$HOME/.nvm/versions/node/$nvm_version/bin/ws"
unit["Mockoon"]="/snap/bin/mockoon"


## Java
unit["Eclipse"]="/snap/bin/eclipse"
unit["IntelliJ_IDEA_Community"]="/snap/bin/intellij-idea-community"
unit["Maven"]="/usr/bin/mvn"
unit["Gradle"]="/usr/bin/gradle"
unit["Ant"]="/usr/bin/ant"
unit["VSCode_Java"]="$HOME/.vscode/extensions/%vscjava%"


## C and C++
#unit["Binutils"]=""
#unit["build-essential"]=""
#unit["Libtool"]=""
#unit["Boost"]=""
unit["Autoconf"]="/usr/bin/autoconf"
unit["Automake"]="/usr/bin/automake"
unit["Clang"]="/usr/bin/clang-14"
unit["CMake"]="/usr/bin/cmake"
unit["llvm"]="/usr/bin/%llvm%"
unit["Ninja_Build"]="/usr/bin/ninja"
unit["Valgrind"]="/usr/bin/valgrind"
unit["GDB"]="/usr/bin/gdb"
unit["CLion"]="/snap/bin/clion"
unit["Conan"]="/usr/local/bin/conan"
unit["Meson"]="/usr/local/bin/meson"
unit["QT_Creator"]="/usr/bin/qtcreator"
unit["VSCode_C++"]="$HOME/.vscode/extensions/%golang%"


## Go
unit["Go"]="/usr/local/go/bin/go"
unit["Goland"]="/snap/bin/goland"
unit["VSCode_C++"]="$HOME/.vscode/extensions/%cpp%"


## Version Control
unit["Git_Extras"]="/usr/bin/git-extras"
unit["Git_Cola"]="/usr/bin/git-cola"
unit["Mercurial"]="/usr/bin/hg"
unit["Subversion"]="/usr/bin/svn"
unit["CVS"]="/usr/bin/cvs"
unit["KDiff3"]="/usr/bin/kdiff3"
unit["Meld"]="/usr/bin/meld"


## PHP
unit["PHP"]=""
unit["Composer"]=""
unit["phpenv"]="$HOME/.phpenv/bin/phpenv"
unit["PhpStorm"]="/snap/bin/phpstorm"
unit["VSCode_PHP"]="$HOME/.vscode/extensions/%php%"


## Ruby
unit["Ruby"]="/usr/bin/ruby"
unit["RubyMine"]="/snap/bin/rubymine"
unit["VSCode_Ruby"]="$HOME/.vscode/extensions/%ruby%"


## Rust
unit["Rust"]="$HOME/.cargo/bin/rustc"
unit["VSCode_Rust"]="$HOME/.vscode/extensions/%rust%"

declare -a not_found_packages

for key in "${!unit[@]}"; do
    if [[ "${unit[$key]}" == *"%"* ]]; then
        placeholder=$(echo "${unit[$key]}" | sed -n 's/.*%\([^%]*\)%.*/\1/p')
        directory=$(dirname "${unit[$key]}")
        if ! ls "$directory"/*"$placeholder"* 1> /dev/null 2>&1; then
            not_found_packages+=("$key")
        fi
    else
        if [ ! -e "${unit[$key]}" ]; then
            not_found_packages+=("$key")
        fi
    fi
done

if [ ${#not_found_packages[@]} -eq 0 ]; then
    echo "All packages found."
    exit 0
else
    echo "Packages not found:"
    for package in "${not_found_packages[@]}"; do
        echo "- $package"
    done
    exit 1
fi