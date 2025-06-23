#!/bin/bash
# az-repos-delete.sh
# Description: Deletes an Azure DevOps repository.
# Usage: ./az-repos-delete.sh <repoName>
# Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <repoName>"
  exit 1
fi

az repos delete --repository "$1" --yes
