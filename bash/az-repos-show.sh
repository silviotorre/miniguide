#!/bin/bash
# az-repos-show.sh
# Description: Shows details for an Azure DevOps repository.
# Usage: ./az-repos-show.sh <repoName>
# Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <repoName>"
  exit 1
fi

az repos show --repository "$1"
