# az-repos-ref-list.ps1
<#+
.SYNOPSIS
    Lists branches in an Azure DevOps repository.
.DESCRIPTION
    This script lists all branches in the specified Azure DevOps repository.
.PARAMETER RepoName
    The name of the Azure DevOps repository.
.EXAMPLE
    .\az-repos-ref-list.ps1 -RepoName myRepo
.NOTES
    Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.
#>
param(
    [Parameter(Mandatory)]
    [string]$RepoName
)

az repos ref list --repository $RepoName --filter heads/ --output table
