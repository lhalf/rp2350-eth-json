set shell := ["bash", "-euc"]

build:
    cargo build --release
    elf2uf2-rs target/thumbv8m.main-none-eabihf/release/rp2350-eth-json

check:
    cargo fmt --check --all
    cargo clippy --bins -- -Dwarnings
