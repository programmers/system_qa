
check "~/.vim_runtime/amix.lock" && return 0

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
. ~/.vim_runtime/install_awesome_vimrc.sh

# hacky - find other file
touch ~/.vim_runtime/amix.lock.