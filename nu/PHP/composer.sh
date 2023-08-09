#!/bin/bash

trap "rm composer-setup.php" EXIT

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer