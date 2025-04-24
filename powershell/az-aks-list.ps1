# az-aks-list.ps1
<#+
.SYNOPSIS
    Lists all AKS clusters in your subscription.
.DESCRIPTION
    This script lists all AKS clusters in the current Azure subscription.
.EXAMPLE
    .\az-aks-list.ps1
.NOTES
    Dependencies: Azure CLI (az), user must be logged in.
#>

az aks list
