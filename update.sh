#!/bin/bash
set -e

# List balance and address of keypair.json file
solana -k ./keypair.json address
solana -k ./keypair.json balance

# https://metaboss.rs/set.html?highlight=update%20authority#set-update-authority
# metaboss set update-authority-all --keypair <PATH_TO_KEYPAIR> --mint-accounts-file <PATH_TO_MINT_ACCOUNTS> --new-update-authority <NEW_UPDATE_AUTHORITY>
metaboss set update-authority-all --keypair ./keypair.json --mint-accounts-file ./mints.json --new-update-authority 2T5ycdNwGGkVL4Kgex9nUnyj8NNQjG1SqkK1nnjYMiLq
