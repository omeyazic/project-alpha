# HashiCorp Vault

## Installation
```bash
./install-vault.sh
./configure-auth.sh

## Add Secrets
```bash
kubectl exec -it vault-0 -n vault -- \
  vault kv put secret/flaskapp/config key=value

## Verify
```bash
kubectl get pods -n vault
kubectl exec -it vault-0 -n vault -- vault status

