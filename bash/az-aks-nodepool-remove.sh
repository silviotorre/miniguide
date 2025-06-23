#!/bin/bash
# az-aks-nodepool-remove.sh
# Description: Removes a specified node pool from the AKS cluster.
# Usage: ./az-aks-nodepool-remove.sh <resource-group> <cluster-name> <nodepool-name>
# Dependencies: Azure CLI (az), user must be logged in and have permission to modify AKS clusters.

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <resource-group> <cluster-name> <nodepool-name>"
  exit 1
fi

RG="$1"
CLUSTER="$2"
NODEPOOL="$3"

az aks nodepool remove --resource-group "$RG" --cluster-name "$CLUSTER" --name "$NODEPOOL"
