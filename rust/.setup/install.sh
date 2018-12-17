# rustup
curl https://sh.rustup.rs -sSf | sh

rustup component add rustfmt-preview
rustup component add clippy

cargo install cargo-watch

# To add, remove and upgrade dependencies
cargo install cargo-edit

# Audit `Cargo.lock` crates
cargo install cargo-audit
