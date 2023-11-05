#!/bin/bash

export home="/home/$(whoami)/"
export proj=$HOME/repo/nu


###############
### TESTING ###
###############
# [X] C and C++
# [X] Cloud
# [X] Containers and VMs
# [X] Database Clients
# [X] Go
# [X] Java
# [X] JavaScript and Node
# [X] PHP
# [X] Python
# [ ] Ruby (messed up!!!)
# [X] Rust
# [X] Version Control
# [X] Web

scripts=(
    # _General
    #"$proj/ubuntu/_General/_Base.sh"
    #"$proj/ubuntu/_General/7Zip.sh"
    #"$proj/ubuntu/_General/Docs2Unix.sh"
    #"$proj/ubuntu/_General/Doom Emacs.sh"
    #"$proj/ubuntu/_General/fd.sh"
    #"$proj/ubuntu/_General/fzf.sh"
    #"$proj/ubuntu/_General/htop.sh"
    #"$proj/ubuntu/_General/jq.sh"
    #"$proj/ubuntu/_General/ripgrep.sh"
    #"$proj/ubuntu/_General/Screen.sh"
    #"$proj/ubuntu/_General/SpaceVim.sh"
    #"$proj/ubuntu/_General/Terminator.sh"
    #"$proj/ubuntu/_General/thefuck.sh"
    #"$proj/ubuntu/_General/tmux.sh"
    #"$proj/ubuntu/_General/UnRAR.sh"
    #"$proj/ubuntu/_General/VSCode Code Runner.sh"
    #"$proj/ubuntu/_General/VSCode Intellicode.sh"
    #"$proj/ubuntu/_General/VSCode Spellchecker.sh"

    # C and C++
    #"$proj/ubuntu/C and C++/Autoconf.sh"
    #"$proj/ubuntu/C and C++/Automake.sh"
    #"$proj/ubuntu/C and C++/Binutils.sh"
    #"$proj/ubuntu/C and C++/Boost.sh"
    #"$proj/ubuntu/C and C++/build-essential.sh"
    #"$proj/ubuntu/C and C++/Clang LLVM.sh"
    #"$proj/ubuntu/C and C++/CLion.sh"
    #"$proj/ubuntu/C and C++/CMake.sh"
    #"$proj/ubuntu/C and C++/Conan.sh"
    #"$proj/ubuntu/C and C++/GDB.sh"
    #"$proj/ubuntu/C and C++/Libtool.sh"
    #"$proj/ubuntu/C and C++/Meson.sh"
    #"$proj/ubuntu/C and C++/Ninja Build.sh"
    #"$proj/ubuntu/C and C++/QT Creator.sh"
    #"$proj/ubuntu/C and C++/Valgrind.sh"
    #"$proj/ubuntu/C and C++/VSCode C++.sh"

    # Cloud
    #"$proj/ubuntu/Cloud/AWS CLI.sh"
    #"$proj/ubuntu/Cloud/Azure CLI.sh"
    #"$proj/ubuntu/Cloud/Digital Ocean CLI.sh"
    #"$proj/ubuntu/Cloud/Google Cloud CLI.sh"
    #"$proj/ubuntu/Cloud/Helm.sh"
    #"$proj/ubuntu/Cloud/Kubectl.sh"
    #"$proj/ubuntu/Cloud/Kubenetes_kind.sh"
    #"$proj/ubuntu/Cloud/Terraform.sh"

    # Containers and VMs
    #"$proj/ubuntu/Containers and VMs/Docker Compose.sh"
    #"$proj/ubuntu/Containers and VMs/Docker.sh"
    #"$proj/ubuntu/Containers and VMs/QEMU KVM.sh"
    #"$proj/ubuntu/Containers and VMs/Virtualbox.sh"
    #"$proj/ubuntu/Containers and VMs/VSCode Docker.sh"
    
    # Database Clients
    #"$proj/ubuntu/Database Clients/DataGrip.sh"
    #"$proj/ubuntu/Database Clients/DBeaver.sh"
    #"$proj/ubuntu/Database Clients/mycli.sh"
    #"$proj/ubuntu/Database Clients/MySQL Workbench.sh"
    #"$proj/ubuntu/Database Clients/pgAdmin Desktop.sh"
    #"$proj/ubuntu/Database Clients/pgcli.sh"
    #"$proj/ubuntu/Database Clients/Redis Commander.sh"
    #"$proj/ubuntu/Database Clients/SQLite Browser.sh"
    #"$proj/ubuntu/Database Clients/usql.sh"

    # Go
    #"$proj/ubuntu/Go/Goland.sh"
    #"$proj/ubuntu/Go/Go.sh"
    #"$proj/ubuntu/Go/Go Version Manager.sh"
    #"$proj/ubuntu/Go/VSCode Go.sh"

    # Java
    #"$proj/ubuntu/Java/Ant.sh"
    #"$proj/ubuntu/Java/Eclipse.sh"
    #"$proj/ubuntu/Java/Gradle.sh"
    #"$proj/ubuntu/Java/IntelliJ IDEA Community.sh"
    #"$proj/ubuntu/Java/Ivy.sh"
    #"$proj/ubuntu/Java/Maven.sh"
    #"$proj/ubuntu/Java/SDKMAN Java Version Manager.sh"
    #"$proj/ubuntu/Java/VSCode Java.sh"

    # JavaScript and Node
    #"$proj/ubuntu/JavaScript and Node/Nodemon.sh"
    #"$proj/ubuntu/JavaScript and Node/Node TypeScript.sh"
    #"$proj/ubuntu/JavaScript and Node/Node Version Manager.sh"
    #"$proj/ubuntu/JavaScript and Node/VSCode ESLint.sh"
    #"$proj/ubuntu/JavaScript and Node/VSCode JavaScript.sh"
    #"$proj/ubuntu/JavaScript and Node/VSCode Node.sh"
    #"$proj/ubuntu/JavaScript and Node/VSCode Path Intellisense.sh"
    #"$proj/ubuntu/JavaScript and Node/VSCode Prettier.sh"
    #"$proj/ubuntu/JavaScript and Node/VSCode TypeScript.sh"
    #"$proj/ubuntu/JavaScript and Node/Yarn.sh"

    # PHP
    #"$proj/ubuntu/PHP/Composer.sh"
    #"$proj/ubuntu/PHP/phpenv.sh"
    #"$proj/ubuntu/PHP/PHP.sh"
    #"$proj/ubuntu/PHP/PhpStorm.sh"
    #"$proj/ubuntu/PHP/VSCode PHP.sh"

    # Python
    #"$proj/ubuntu/Python/Black.sh"
    #"$proj/ubuntu/Python/Flake8.sh"
    #"$proj/ubuntu/Python/IPython.sh"
    #"$proj/ubuntu/Python/Pipenv.sh"
    #"$proj/ubuntu/Python/pipx.sh"
    #"$proj/ubuntu/Python/Poetry.sh"
    #"$proj/ubuntu/Python/PyCharm.sh"
    #"$proj/ubuntu/Python/pyenv.sh"
    #"$proj/ubuntu/Python/VSCode Python.sh"

    # Ruby
    #"$proj/ubuntu/Ruby/rbenv.sh"
    #"$proj/ubuntu/Ruby/RubyMine.sh"
    #"$proj/ubuntu/Ruby/VSCode Ruby.sh"

    # Rust
    #"$proj/ubuntu/Rust/Rust.sh"
    #"$proj/ubuntu/Rust/VSCode Rust.sh"

    # Version Control
    #"$proj/ubuntu/Version Control/CVS.sh"
    #"$proj/ubuntu/Version Control/Git Cola.sh"
    #"$proj/ubuntu/Version Control/Git Extras.sh"
    #"$proj/ubuntu/Version Control/KDiff3.sh"
    #"$proj/ubuntu/Version Control/Meld.sh"
    #"$proj/ubuntu/Version Control/Mercurial.sh"
    #"$proj/ubuntu/Version Control/Subversion.sh"

    # Web
    #"$proj/ubuntu/Web/Angular CLI.sh"
    #"$proj/ubuntu/Web/Create React App.sh"
    #"$proj/ubuntu/Web/insomnia.sh"
    #"$proj/ubuntu/Web/localtunnel.sh"
    #"$proj/ubuntu/Web/Local Web Server.sh"
    #"$proj/ubuntu/Web/Mockoon.sh"
    #"$proj/ubuntu/Web/ngrok.sh"
    #"$proj/ubuntu/Web/Postman.sh"
    #"$proj/ubuntu/Web/VSCode Angular.sh"
    #"$proj/ubuntu/Web/VSCode CSS Peak.sh"
    #"$proj/ubuntu/Web/VSCode ESLint.sh"
    #"$proj/ubuntu/Web/VSCode Prettier.sh"
    #"$proj/ubuntu/Web/VSCode React.sh"
    #"$proj/ubuntu/Web/VSCode Svelte.sh"
    #"$proj/ubuntu/Web/VSCode TypeScript.sh"
    #"$proj/ubuntu/Web/VSCode Vue.sh"
    #"$proj/ubuntu/Web/Vue CLI.sh"
    #"$proj/ubuntu/Web/Webstorm.sh"
)


#for script in "${scripts[@]}"; do
#    base_name=$(basename "$script" | sed 's/\..*//')

#    echo "Installing $base_name..."
#    if ! output=$(bash "$script" 2>&1 1>/dev/null); then
#        echo "Installation of $script failed. Error output:"
#        echo "$output"
#    fi

#done

for command in "${scripts[@]}"; do
    echo "Installing $command..."
    if ! bash "$command"; then
        echo "Installation of $command failed."
    fi
done