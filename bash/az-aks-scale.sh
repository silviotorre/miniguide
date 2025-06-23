#!/bin/bash
# az-aks-scale.sh
# Description: Scales the number of nodes in your AKS cluster.
# Usage: ./az-aks-scale.sh <resource-group> <cluster-name> <node-count>
# Dependencies: Azure CLI (az), user must be logged in and have permission to scale AKS clusters.

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <resource-group> <cluster-name> <node-count>"
  exit 1
fi

RG="$1"
CLUSTER="$2"
COUNT="$3"

az aks scale --resource-group "$RG" --name "$CLUSTER" --node-count "$COUNT"
