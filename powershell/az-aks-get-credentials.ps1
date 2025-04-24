# az-aks-get-credentials.ps1
<#+
.SYNOPSIS
    Downloads credentials for the specified AKS cluster.
.DESCRIPTION
    This script downloads kubeconfig credentials for an AKS cluster.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.EXAMPLE
    .\az-aks-get-credentials.ps1 -ResourceGroup myRG -ClusterName myAKS
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to access AKS clusters.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName
)

az aks get-credentials --resource-group $ResourceGroup --name $ClusterName
