#!/bin/bash
# az-aks-get-credentials.sh
# Description: Downloads credentials for the specified AKS cluster.
# Usage: ./az-aks-get-credentials.sh <resource-group> <cluster-name>
# Dependencies: Azure CLI (az), user must be logged in and have permission to access AKS clusters.

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <resource-group> <cluster-name>"
  exit 1
fi

RG="$1"
CLUSTER="$2"

az aks get-credentials --resource-group "$RG" --name "$CLUSTER"
