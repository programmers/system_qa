#!/bin/bash

git clone https://github.com/phpenv/phpenv.git ~/.phpenv

echo 'export PATH="$HOME/.phpenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(phpenv init -)"' >> ~/.bashrc
source ~/.bashrc

# plugins
git clone https://github.com/phpenv/php-build.git ~/.phpenv/plugins/php-build
git clone https://github.com/CHH/phpenv-composer.git ~/.phpenv/plugins/phpenv-composer