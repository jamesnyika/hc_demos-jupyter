#!/bin/sh

## boot vault with the local stuff
figlet "Vault Agent Auto-Auth Started"
export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_TOKEN=root

## execute vault enterprise in dev mode with our config file
vault agent -config=./config/vault-agent-config.hcl -log-level=debug &

echo "--> Vault Enterprise Agent Started"


