#!/bin/bash

sys_check ~/.pyenv/bin/pyenv && exit 0

curl https://pyenv.run | bash

echo '
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
' >> ~/.bashrc