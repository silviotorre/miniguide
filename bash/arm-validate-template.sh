#!/bin/bash
# arm-validate-template.sh
# Description: Validates a JSON ARM template.
# Usage: ./arm-validate-template.sh <resource-group> <template-file>
# Dependencies: Azure CLI (az)

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <resource-group> <template-file>"
  exit 1
fi

az deployment group validate --resource-group "$1" --template-file "$2"
