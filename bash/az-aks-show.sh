#!/bin/bash
# az-aks-show.sh
# Description: Displays details for a specified AKS cluster.
# Usage: ./az-aks-show.sh <resource-group> <cluster-name>
# Dependencies: Azure CLI (az), user must be logged in and have permission to access AKS clusters.

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <resource-group> <cluster-name>"
  exit 1
fi

RG="$1"
CLUSTER="$2"

az aks show --resource-group "$RG" --name "$CLUSTER"
