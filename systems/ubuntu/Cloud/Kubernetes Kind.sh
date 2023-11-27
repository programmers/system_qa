#!/bin/bash

source "$proj/check" && check "/usr/bin/kubectl" && return 0

echo "no such program matthew"