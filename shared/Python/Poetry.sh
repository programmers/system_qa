#!/bin/bash

sys_check ~/.local/bin/poetry && exit 0

curl -sSL https://install.python-poetry.org | python -

