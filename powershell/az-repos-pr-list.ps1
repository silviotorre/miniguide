# az-repos-pr-list.ps1
<#+
.SYNOPSIS
    Lists pull requests for a repository in Azure DevOps.
.DESCRIPTION
    This script lists pull requests for a specified repository in Azure DevOps.
.PARAMETER RepoName
    The name of the Azure DevOps repository.
.EXAMPLE
    .\az-repos-pr-list.ps1 -RepoName myRepo
.NOTES
    Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.
#>
param(
    [Parameter(Mandatory)]
    [string]$RepoName
)

az repos pr list --repository $RepoName --output table
