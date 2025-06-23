# az-repos-list.ps1
<#+
.SYNOPSIS
    Lists Azure DevOps repositories in the current organization/project.
.DESCRIPTION
    This script lists all Azure DevOps repositories using the Azure CLI.
.EXAMPLE
    .\az-repos-list.ps1
.NOTES
    Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.
#>

az repos list --output table
