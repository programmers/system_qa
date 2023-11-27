if [ -z "$ps_installed" ]; then
    export ps_system="ubuntu"
    export ps_root="$HOME/repo/"
    export progsys="$ps_root/progsys"
    export ps_installed=true

    ps_check() { [ -e "$1" ]; }
    export -f ps_check

    ps_exec() { . "$ps_root$1"; }
    export -f ps_exec 
fi