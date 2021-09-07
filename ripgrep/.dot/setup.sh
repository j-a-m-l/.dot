#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

pkg_refresh_if_necessary

info "Installing ripgrep"

pkg_install ripgrep

info "Installing rga dependencias"

pkg_install build-essential pandoc poppler-utils ffmpeg

info "Installing rga"

# TODO: only if cargo is already installed with Rustup
cargo install ripgrep_all
# cargo +nightly install --git https://github.com/phiresky/ripgrep-all.git --rev 977074c6e64bd8cc304e0d68e07243ccab9cb736

# TODO: ripgrep_all config
