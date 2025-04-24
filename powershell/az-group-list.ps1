# az-group-list.ps1
<#+
.SYNOPSIS
    Lists all Azure resource groups.
.DESCRIPTION
    This script lists all Azure resource groups in the current subscription.
.EXAMPLE
    .\az-group-list.ps1
.NOTES
    Dependencies: Azure CLI (az)
#>

az group list
