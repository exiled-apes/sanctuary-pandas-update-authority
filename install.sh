#!/bin/bash
set -e

# List balance and address of keypair.json file
solana -k ./keypair.json address
solana -k ./keypair.json balance

# Install Solana and create temp wallet just in case
sh -c "$(curl -sSfL https://release.solana.com/v1.9.13/install)"
echo 'export PATH="/Users/$(whoami)/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.profile
solana --version
solana config set --url https://ssc-dao.genesysgo.net # set default url
solana-keygen new --outfile ./temp-wallet.json # create keypair

# Install rust and cargo
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
rustup component add rustfmt
npm i -g @project-serum/anchor-cli
cargo install --git https://github.com/project-serum/anchor --tag v0.20.1 anchor-cli --locked
anchor --version
rustup update

# install metaboss (toolkit)
cargo install metaboss