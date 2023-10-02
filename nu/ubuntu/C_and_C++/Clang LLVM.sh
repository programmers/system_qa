#!/bin/bash

source /home/mvim/repo/nu/src/checks/lookup_general_package.sh

if lookup_general_package "/usr/bin/clang"; then exit; fi

trap "rm llvm.sh" EXIT

curl -sL https://apt.llvm.org/llvm.sh -o llvm.sh
chmod +x llvm.sh

./llvm.sh 14

ln -s /usr/bin/clang-14 /usr/bin/clang
ln -s /usr/bin/clang++-14 /usr/bin/clang++