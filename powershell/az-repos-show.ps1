# az-repos-show.ps1
<#+
.SYNOPSIS
    Shows details for an Azure DevOps repository.
.DESCRIPTION
    This script shows details for a specified Azure DevOps repository.
.PARAMETER RepoName
    The name of the Azure DevOps repository.
.EXAMPLE
    .\az-repos-show.ps1 -RepoName myRepo
.NOTES
    Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.
#>
param(
    [Parameter(Mandatory)]
    [string]$RepoName
)

az repos show --repository $RepoName
