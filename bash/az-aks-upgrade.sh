#!/bin/bash
# az-aks-upgrade.sh
# Description: Upgrades the Kubernetes version of your AKS cluster.
# Usage: ./az-aks-upgrade.sh <resource-group> <cluster-name> <kubernetes-version>
# Dependencies: Azure CLI (az), user must be logged in and have permission to upgrade AKS clusters.

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <resource-group> <cluster-name> <kubernetes-version>"
  exit 1
fi

RG="$1"
CLUSTER="$2"
VERSION="$3"

az aks upgrade --resource-group "$RG" --name "$CLUSTER" --kubernetes-version "$VERSION"
