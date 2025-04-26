# az-repos-create.ps1
<#+
.SYNOPSIS
    Creates a new Azure DevOps repository.
.DESCRIPTION
    This script creates a new Azure DevOps repository in the specified project.
.PARAMETER RepoName
    The name of the repository to create.
.PARAMETER ProjectName
    The name of the Azure DevOps project.
.EXAMPLE
    .\az-repos-create.ps1 -RepoName myRepo -ProjectName myProject
.NOTES
    Dependencies: Azure CLI (az), Azure DevOps extension enabled, user must be logged in.
#>
param(
    [Parameter(Mandatory)]
    [string]$RepoName,
    [Parameter(Mandatory)]
    [string]$ProjectName
)

az repos create --name $RepoName --project $ProjectName
