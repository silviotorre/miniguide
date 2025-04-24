# az-aks-nodepool-list.ps1
<#+
.SYNOPSIS
    Lists all node pools for the specified AKS cluster.
.DESCRIPTION
    This script lists all node pools for a specified AKS cluster.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.EXAMPLE
    .\az-aks-nodepool-list.ps1 -ResourceGroup myRG -ClusterName myAKS
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to access AKS clusters.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName
)

az aks nodepool list --resource-group $ResourceGroup --cluster-name $ClusterName
