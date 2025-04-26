#!/bin/bash
# az-repos-pr-merge.sh
# Description: Merges a pull request in Azure DevOps.
# Usage: ./az-repos-pr-merge.sh <prId>
# Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <prId>"
  exit 1
fi

az repos pr merge --id "$1" --auto-complete
