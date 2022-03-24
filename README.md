# Sanctuary Update Authority

A simple script to set a new update authority on a list of NFT mint addresses

## Setup

This command installs Solana, Rust, and Metaboss. Which are required tools to transfer update authority.

```bash
./install.sh
```

## Usage

This command uses Metaboss to set each one of the NFTs from `mint.json` to the new public address controlled by The Sanctuary (2T5ycdNwGGkVL4Kgex9nUnyj8NNQjG1SqkK1nnjYMiLq).

This script requires that the original update authority key be added to this folder and named `keypair.json`.

```bash
./update.sh
```

## Resources

- https://metaboss.rs/set.html?highlight=update%20authority#set-update-authority
- https://itsfoss.com/install-bash-on-windows/
