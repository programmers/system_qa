#!/bin/bash

sys_check /usr/bin/usql && exit 0

trap "rm usql_archive" EXIT

curl -sL https://github.com/xo/usql/releases/download/v0.10.0/usql_static-0.10.0-linux-amd64.tar.bz2 -o usql_archive

tar -xf usql_archive usql_static 

sudo mv usql_static /usr/bin/usql