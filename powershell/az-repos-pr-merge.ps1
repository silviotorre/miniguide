# az-repos-pr-merge.ps1
<#+
.SYNOPSIS
    Merges a pull request in Azure DevOps.
.DESCRIPTION
    This script merges a pull request in Azure DevOps using the Azure CLI.
.PARAMETER PrId
    The ID of the pull request to merge.
.EXAMPLE
    .\az-repos-pr-merge.ps1 -PrId 123
.NOTES
    Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.
#>
param(
    [Parameter(Mandatory)]
    [string]$PrId
)

az repos pr merge --id $PrId --auto-complete
