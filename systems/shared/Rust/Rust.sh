#!/bin/bash

sys_check ~/.cargo/bin/rustc && exit 0

curl https://sh.rustup.rs -sSf | sh -s -- -y # have to do this for silent install