#!/bin/bash

check "~/.cargo/bin/rustc" && return 0

curl https://sh.rustup.rs -sSf | sh -s -- -y # have to do this for silent install