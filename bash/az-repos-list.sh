#!/bin/bash
# az-repos-list.sh
# Description: Lists Azure DevOps repositories in the current organization/project.
# Usage: ./az-repos-list.sh
# Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.

az repos list --output table
