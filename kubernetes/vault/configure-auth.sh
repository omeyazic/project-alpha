#!/bin/bash
set -e

kubectl exec -it vault-0 -n vault -- sh -c '
vault auth enable kubernetes
vault write auth/kubernetes/config \
    kubernetes_host="https://$KUBERNETES_PORT_443_TCP_ADDR:443"
'

kubectl exec -it vault-0 -n vault -- vault policy write flaskapp-policy - <<POLICY
path "secret/data/flaskapp/*" {
  capabilities = ["read"]
}
POLICY

kubectl exec -it vault-0 -n vault -- vault write auth/kubernetes/role/flaskapp \
    bound_service_account_names=default \
    bound_service_account_namespaces=test-app-ns \
    policies=flaskapp-policy \
    ttl=24h

echo "✅ Vault configured"
