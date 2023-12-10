#!/bin/bash

check "~/.local/bin/poetry" && return 0

curl -sSL https://install.python-poetry.org | python3 -

