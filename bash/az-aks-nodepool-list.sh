#!/bin/bash
# az-aks-nodepool-list.sh
# Description: Lists all node pools for the specified AKS cluster.
# Usage: ./az-aks-nodepool-list.sh <resource-group> <cluster-name>
# Dependencies: Azure CLI (az), user must be logged in and have permission to access AKS clusters.

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <resource-group> <cluster-name>"
  exit 1
fi

RG="$1"
CLUSTER="$2"

az aks nodepool list --resource-group "$RG" --cluster-name "$CLUSTER"
