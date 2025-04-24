#!/bin/bash
# az-aks-create.sh
# Description: Creates a new Kubernetes cluster on Azure AKS.
# Usage: ./az-aks-create.sh <resource-group> <cluster-name> <node-count>
# Dependencies: Azure CLI (az), user must be logged in and have permission to create AKS clusters.
# Azure best practice: Use managed identity and avoid hardcoding credentials.

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <resource-group> <cluster-name> <node-count>"
  exit 1
fi

RG="$1"
CLUSTER="$2"
COUNT="$3"

# Create AKS cluster
az aks create --resource-group "$RG" --name "$CLUSTER" --node-count "$COUNT" --generate-ssh-keys
