#!/bin/bash
# az-repos-ref-list.sh
# Description: Lists branches in an Azure DevOps repository.
# Usage: ./az-repos-ref-list.sh <repoName>
# Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <repoName>"
  exit 1
fi

az repos ref list --repository "$1" --filter heads/ --output table
