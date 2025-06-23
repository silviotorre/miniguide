# az-repos-delete.ps1
<#+
.SYNOPSIS
    Deletes an Azure DevOps repository.
.DESCRIPTION
    This script deletes an Azure DevOps repository using the Azure CLI.
.PARAMETER RepoName
    The name of the repository to delete.
.EXAMPLE
    .\az-repos-delete.ps1 -RepoName myRepo
.NOTES
    Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.
#>
param(
    [Parameter(Mandatory)]
    [string]$RepoName
)

az repos delete --repository $RepoName --yes
