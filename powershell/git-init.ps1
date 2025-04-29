# git-init.ps1
<#+
.SYNOPSIS
    Initialize a new Git repository in a directory.
.DESCRIPTION
    This script initializes a new Git repository and creates essential files.
.PARAMETER RepoName
    The name of the repository directory to create.
.EXAMPLE
    .\git-init.ps1 -RepoName MyNewRepo
.NOTES
    Dependencies: git
#>
param(
    [Parameter(Mandatory)]
    [string]$RepoName
)

New-Item -ItemType Directory -Path $RepoName | Out-Null
Set-Location -Path $RepoName

git init
Set-Content -Path "README.md" -Value "# $RepoName"
Set-Content -Path "LICENSE" -Value "Add your license text here."
Set-Content -Path ".gitignore" -Value "# Logs`n*.log`n`n# Node.js`nnode_modules/`n`n# Python`n__pycache__/"

git add .
git commit -m "Initial commit"

Write-Host "Git repository initialized in $RepoName"
