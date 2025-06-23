#!/bin/bash
# az-repos-pr-list.sh
# Description: Lists pull requests for a repository in Azure DevOps.
# Usage: ./az-repos-pr-list.sh <repoName>
# Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <repoName>"
  exit 1
fi

az repos pr list --repository "$1" --output table
