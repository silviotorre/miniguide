# az-account-list.ps1
<#+
.SYNOPSIS
    Lists available Azure accounts.
.DESCRIPTION
    This script lists all available Azure accounts using the Azure CLI.
.EXAMPLE
    .\az-account-list.ps1
.NOTES
    Dependencies: Azure CLI (az)
#>

az account list
