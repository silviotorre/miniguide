#!/bin/bash
# az-aks-nodepool-add.sh
# Description: Adds a new node pool to the given AKS cluster.
# Usage: ./az-aks-nodepool-add.sh <resource-group> <cluster-name> <nodepool-name> <node-count>
# Dependencies: Azure CLI (az), user must be logged in and have permission to modify AKS clusters.

if [ "$#" -ne 4 ]; then
  echo "Usage: $0 <resource-group> <cluster-name> <nodepool-name> <node-count>"
  exit 1
fi

RG="$1"
CLUSTER="$2"
NODEPOOL="$3"
COUNT="$4"

az aks nodepool add --resource-group "$RG" --cluster-name "$CLUSTER" --name "$NODEPOOL" --node-count "$COUNT"
