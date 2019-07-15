#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

#
# NVM
#

info "Installing the latest version of NVM"

nvm_repo="nvm-sh/nvm"
nvm_version=$(gh_latest_release "$nvm_repo")
# Version "0.1.0" instead of "v0.1.0"
nvm_version="${nvm_version#?}"
curl -o- "https://raw.githubusercontent.com/$nvm_repo/$nvm_version/install.sh" | bash

# To use `nvm` inside this script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#
# Node.js
#

info "Installing the latest version of Node.js"
nvm install node

#
# Yarn
#

info "Installing the latest version of Yarn"
npm install -g yarn
