# git-clone.ps1
<#+
.SYNOPSIS
    Clone a Git repository.
.DESCRIPTION
    This script clones a Git repository from a given URL.
.PARAMETER RepositoryUrl
    The URL of the repository to clone.
.EXAMPLE
    .\git-clone.ps1 -RepositoryUrl https://github.com/user/repo.git
.NOTES
    Dependencies: git
#>
param(
    [Parameter(Mandatory)]
    [string]$RepositoryUrl
)

git clone $RepositoryUrl
