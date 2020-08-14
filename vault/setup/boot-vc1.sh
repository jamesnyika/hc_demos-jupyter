#!/bin/sh

## boot vault with the local stuff
figlet "Vault Demo Node 1"
export VAULT_ADDR=http://127.0.0.1:8201
export VAULT_TOKEN=root

## execute vault enterprise in dev mode with our config file
vault server -dev -dev-root-token-id=root -config=./config/vc1.hcl & 

echo "--> Vault Enterprise Server Started in Dev Mode"
echo " UI Available at http://localhost:8201/ui"

