#!/bin/bash

check "/usr/bin/terminator" && return 0

sudo apt-get install -y terminator