#!/bin/bash
set -e

helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo update

kubectl apply -f namespace.yaml

helm install vault hashicorp/vault \
  --namespace vault \
  --set "server.dev.enabled=true" \
  --set "server.dev.devRootToken=root" \
  --set "injector.enabled=true" \
  --set "server.dataStorage.enabled=false"

kubectl wait --for=condition=Ready pod/vault-0 -n vault --timeout=300s
echo "✅ Vault installed"
