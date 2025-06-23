#!/bin/bash
# az-group-create.sh
# Description: Creates a new Azure resource group.
# Usage: ./az-group-create.sh <resource-group> <location>
# Dependencies: Azure CLI (az)

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <resource-group> <location>"
  exit 1
fi

group="$1"
location="$2"

az group create --name "$group" --location "$location"
