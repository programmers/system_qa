#!/bin/bash

echo "TODO::Web Tools - Insomnia is not installing"

trap "rm insomnia.deb" EXIT

curl -sL https://github.com/Kong/insomnia/releases/download/core%408.1.0/Insomnia.Core-8.1.0.deb -o insomnia.deb

sudo dpkg -i insomnia.deb