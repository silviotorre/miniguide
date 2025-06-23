# az-login.ps1
<#+
.SYNOPSIS
    Authenticates to Azure using interactive login.
.DESCRIPTION
    This script authenticates the user to Azure using the Azure CLI.
.EXAMPLE
    .\az-login.ps1
.NOTES
    Dependencies: Azure CLI (az)
#>

az login
