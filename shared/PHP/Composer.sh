#!/bin/bash

sys_check /usr/local/bin/composer && exit 0

trap "rm composer-setup.php" EXIT

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer