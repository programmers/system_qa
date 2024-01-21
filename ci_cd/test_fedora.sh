#!/bin/bash

declare -A unit

# fedora servers puts vscode assets in here:
vscode_root=".vscode-server"

##  Base
unit["Terminator"]=/usr/bin/terminator
unit["Screen"]=/usr/bin/screen
unit["tmux"]=/usr/bin/tmux
unit["htop"]=/usr/bin/htop
unit["ripgrep"]=/usr/bin/rg
unit["fzf"]=/usr/bin/fzf
unit["jq"]=/usr/bin/jq
unit["Neovim"]=/usr/bin/nvim
unit["Amix_Vim"]=~/.vim_runtime/amix.lock
unit["Emacs_Prelude"]=~/.emacs.d/core/prelude-core.el
unit["7Zip"]=/usr/bin/7z
unit["UnRAR"]=/usr/bin/unrar
unit["Docs2Unix"]=/usr/bin/dos2unix
unit["thefuck"]=/usr/bin/thefuck
unit["VSCode_Code_Runner"]=~/$vscode_root/extensions/%code-runner%
unit["VSCode_Intellicode"]=~/$vscode_root/extensions/%intellicode%
unit["VSCode_Spellchecker"]=~/$vscode_root/extensions/%spellchecker%


## Python
#unit["Pipenv"]=""
#unit["Poetry"]=""
unit["pyenv"]="/home/$USER/.pyenv/bin/pyenv"
unit["PyCharm"]="/snap/bin/pycharm-community"
unit["Black"]="/usr/bin/black"
unit["Flake8"]="/usr/bin/flake8"
unit["VSCode_Python"]="$HOME/$vscode_root/extensions/%python%"


## Cloud
# unit["Terraform"]=
unit["AWS_CLI"]=/usr/bin/aws
unit["Azure_CLI"]=/usr/bin/az
unit["Google_Cloud_CLI"]=/snap/bin/gcloud
unit["Digital_Ocean_CLI"]=/snap/bin/doctl
unit["Kubernetes_Kind"]=/usr/local/bin/kind
unit["Kubectl"]=/snap/bin/kubectl
unit["Helm"]=/snap/bin/helm
unit["Terraform"]=/snap/bin/terraform


## Containers and VMs
unit["Virtualbox"]=/usr/bin/virtualbox
unit["QEMU_KVM"]=/usr/bin/qemu-kvm
unit["Docker"]=/usr/bin/docker
unit["Docker_Compose"]=/usr/local/bin/docker-compose
unit["VSCode_Docker"]=~/$vscode_root/extensions/%docker%


## Database Clients
unit["pgAdmin_Web"]=/usr/pgadmin4
unit["MySQL_Workbench"]=/snap/bin/mysql-workbench-community
unit["DBeaver"]=/usr/bin/dbeaver-ce
unit["DataGrip"]=/snap/bin/datagrip
unit["SQLite_Browser"]=/usr/bin/sqlitebrowser
unit["Redis_Commander"]=~/.npm-global/bin/redis-commander
unit["usql"]=/usr/bin/usql


## JavaScript and Node
unit["Node_Version_Manager"]=~/.nvm
unit["Node_TypeScript"]=~/.npm-global/bin/ts-node
unit["Nodemon"]=~/.npm-global/bin/nodemon
unit["Yarn"]=~/.npm-global/bin/yarn
unit["VSCode_Node"]=~/$vscode_root/extensions/%node%
unit["VSCode_JavaScript"]=~/$vscode_root/extensions/%javascript%
unit["VSCode_TypeScript"]=~/$vscode_root/extensions/%typescript%
unit["VSCode_ESLint"]=~/$vscode_root/extensions/%eslint%
unit["VSCode_Prettier"]=~/$vscode_root/extensions/%prettier%
unit["VSCode_Path_Intellisense"]=~/$vscode_root/extensions/%path-intellisense%


## Web Tools
unit["Angular_CLI"]=~/.npm-global/bin/ng
unit["Create_React_App"]=~/.npm-global/bin/create-react-app
unit["Vue_CLI"]=~/.npm-global/bin/vue
unit["Webstorm"]=/snap/bin/webstorm
unit["Postman"]=/snap/bin/postman
unit["ngrok"]=/snap/bin/ngrok
unit["localtunnel"]=~/.npm-global/bin/lt
unit["Local_Web_Server"]=~/.npm-global/bin/ws
unit["Mockoon"]=/snap/bin/mockoon


## Java
#unit["Gradle"]=""
unit["SDKMAN"]=~/.sdkman
unit["Eclipse"]=/snap/bin/eclipse
unit["IntelliJ_IDEA_Community"]=/snap/bin/intellij-idea-community
unit["Maven"]=/usr/bin/mvn
unit["Ant"]=/usr/bin/ant
unit["VSCode_Java"]=~/$vscode_root/extensions/%vscjava%


## C and C++
#unit["Binutils"]=""
#unit["Libtool"]=""
#unit["Boost"]=""
#unit["Conan"]=""
unit["Autoconf"]=/usr/bin/autoconf
unit["Automake"]=/usr/bin/automake
unit["Clang"]=/usr/bin/clang
unit["CMake"]=/usr/bin/cmake
unit["llvm"]=/usr/bin/%llvm%
unit["Ninja_Build"]=/usr/bin/ninja
unit["Valgrind"]=/usr/bin/valgrind
unit["GDB"]=/usr/bin/gdb
unit["CLion"]=/snap/bin/clion
unit["QT_Creator"]=/usr/bin/qtcreator
unit["VSCode_C++"]=~/$vscode_root/extensions/%cpp%


## Go
unit["Go"]=/usr/local/go/bin/go
unit["Goland"]=/snap/bin/goland
unit["VSCode_Go"]=~/$vscode_root/extensions/%golang%


## Version Control
unit["Git_Extras"]=/usr/bin/git-extras
unit["Git_Cola"]=/usr/bin/git-cola
unit["Mercurial"]=/usr/bin/hg
unit["Subversion"]=/usr/bin/svn
unit["CVS"]=/usr/bin/cvs
unit["KDiff3"]=/usr/bin/kdiff3
unit["Meld"]=/usr/bin/meld


## PHP
unit["PHP"]=/usr/bin/php
unit["Composer"]=/usr/local/bin/composer
unit["phpenv"]=~/.phpenv/bin/phpenv
unit["PhpStorm"]=/snap/bin/phpstorm
unit["VSCode_PHP"]=~/$vscode_root/extensions/%php%


## Ruby
unit["Ruby"]=/usr/bin/ruby
unit["RubyMine"]=/snap/bin/rubymine
unit["VSCode_Ruby"]=~/$vscode_root/extensions/%ruby%


## Rust
unit["Rust"]=~/.cargo/bin/rustc
unit["VSCode_Rust"]=~/$vscode_root/extensions/%rust%

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