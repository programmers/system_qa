#!/bin/bash

sys_check ~/.phpenv && exit 0

curl -L https://raw.githubusercontent.com/phpenv/phpenv-installer/master/bin/phpenv-installer | bash