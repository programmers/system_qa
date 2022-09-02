#!/bin/bash
trap "rm composer-setup.php" EXIT

curl -sL https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer