#!/bin/bash

trap "rm llvm.sh" EXIT

curl -sL https://apt.llvm.org/llvm.sh -o llvm.sh
chmod +x llvm.sh

./llvm.sh 14

ln -s /usr/bin/clang-14 /usr/bin/clang
ln -s /usr/bin/clang++-14 /usr/bin/clang++