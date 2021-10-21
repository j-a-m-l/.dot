#
# NVM
#

NVM_DIR="$HOME/.nvm"
# Load `nvm`
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Bash autocompletion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# TODO Zsh autocompletion

#
# Node
#

# Add Node.js path, from NVM FIXME
# export PATH=$PATH:$NVM_BIN

# Yarn

# NOTE: this should not be necessary at all, but it's the simplest way to force NVM to use always the default Node version
nvm use --silent default
export PATH="$(yarn global bin):$PATH"

# jsctags path FIXME
# export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
