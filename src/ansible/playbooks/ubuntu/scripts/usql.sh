#!/bin/bash
trap "rm usql_archive" EXIT

curl -sL https://github.com/xo/usql/releases/download/v0.10.0/usql_static-0.10.0-linux-amd64.tar.bz2 -o usql_archive
tar -xf usql_archive usql_static 
mv usql_static /usr/bin/usql