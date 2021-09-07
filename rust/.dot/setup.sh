#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

#
# Rustup & Rust
#

info "Installing Rustup y Rust"

# rustup
# TODO: Customize without modifying PATH
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.profile
source $HOME/.cargo/env

# FIXME Bash
# rustup completions bash > $HOME/.local/share/bash-completion/completions/rustup
# TODO Zsh

info "Installing Rustup components"

rustup component add rustfmt
rustup component add clippy

# Nightly

rustup install nightly

#
# Cargo
#

info "Installing Cargo subcommands"

# OpenSSL is required by several subcommands
pkg_refresh_if_necessary
pkg_install libssl-dev

# Watch for changes on code and run commands when they occur
cargo install cargo-watch

# To add, remove and upgrade dependencies
cargo install cargo-edit

# Audit `Cargo.lock` crates
cargo install cargo-audit

# Prints the result of macro expansion
cargo install cargo-expand

# Visualize the dependency graph as a tree
cargo install cargo-tree

# Visualize an overview of the create modules TODO try
# rustup run nightly cargo install cargo-modules

# TODO try cargo-outdated
# TODO try cargo-script
# TODO try cargo-src
# TODO try cargo-semver
