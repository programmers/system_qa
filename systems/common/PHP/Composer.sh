#!/bin/bash

source "$proj/check" && check "/usr/local/bin/composer" && return 0

trap "rm composer-setup.php" EXIT

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer