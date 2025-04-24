#!/bin/bash
# az-aks-get-versions.sh
# Description: Retrieves a list of available Kubernetes versions for AKS.
# Usage: ./az-aks-get-versions.sh <location>
# Dependencies: Azure CLI (az), user must be logged in.

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <location>"
  exit 1
fi

LOCATION="$1"

az aks get-versions --location "$LOCATION"
