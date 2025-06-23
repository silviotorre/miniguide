# az-aks-get-versions.ps1
<#+
.SYNOPSIS
    Retrieves a list of available Kubernetes versions for AKS.
.DESCRIPTION
    This script retrieves a list of available Kubernetes versions for AKS in a given Azure location.
.PARAMETER Location
    The Azure region (e.g., westeurope).
.EXAMPLE
    .\az-aks-get-versions.ps1 -Location westeurope
.NOTES
    Dependencies: Azure CLI (az), user must be logged in.
#>
param(
    [Parameter(Mandatory)]
    [string]$Location
)

az aks get-versions --location $Location
