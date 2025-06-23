#!/bin/bash
# az-repos-create.sh
# Description: Creates a new Azure DevOps repository.
# Usage: ./az-repos-create.sh <repoName> <projectName>
# Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <repoName> <projectName>"
  exit 1
fi

az repos create --name "$1" --project "$2"
