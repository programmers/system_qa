#!/bin/bash

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bash_profile

~/.rbenv/bin/rbenv init - bash

rbenv install 3.1.2

rbenv global 3.1.2