#!/bin/sh

## go to the right spot
cd ~/work/jupyter/hc_demos-jupyter/vault

export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_TOKEN=root
export VAULT_SKIP_VERIFY=true
export LICENSE=/Users/jnyika/.licenses/vault.json

echo "===============STARTING UP VAULT DEMO=============="
/bin/sh ./setup/boot-consul.sh
echo "===============CONSUL STARTED=============="
sleep 3
/bin/sh ./setup/boot-vc1.sh
echo "===============VAULT ENT STARTED=============="
sleep 3
echo "===============APPLY LICENSE=============="
echo "Applying a license..."
#license the server
curl \
  --header "X-Vault-Token: root" \
  --request PUT \
  --data "@${LICENSE}" \
  http://127.0.0.1:8200/v1/sys/license
echo "===============DEMO SERVER STARTED=============="
echo "===============STARTING JUPYTER LAB=============="
jupyter lab
