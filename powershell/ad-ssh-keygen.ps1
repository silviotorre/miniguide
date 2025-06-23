# ad-ssh-keygen.ps1
<#+
.SYNOPSIS
    Generates a new SSH key pair.
.DESCRIPTION
    This script generates a new SSH key pair using OpenSSH.
.PARAMETER Email
    The email address to associate with the SSH key.
.EXAMPLE
    .\ad-ssh-keygen.ps1 -Email "your_email@example.com"
.NOTES
    Dependencies: OpenSSH (ssh-keygen)
#>
param(
    [Parameter(Mandatory)]
    [string]$Email
)

ssh-keygen -t rsa -b 4096 -C $Email
