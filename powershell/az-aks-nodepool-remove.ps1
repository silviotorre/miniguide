# az-aks-nodepool-remove.ps1
<#+
.SYNOPSIS
    Removes a specified node pool from the AKS cluster.
.DESCRIPTION
    This script removes a specified node pool from an AKS cluster.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.PARAMETER NodepoolName
    The name of the node pool to remove.
.EXAMPLE
    .\az-aks-nodepool-remove.ps1 -ResourceGroup myRG -ClusterName myAKS -NodepoolName np1
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to modify AKS clusters.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName,
    [Parameter(Mandatory)]
    [string]$NodepoolName
)

az aks nodepool remove --resource-group $ResourceGroup --cluster-name $ClusterName --name $NodepoolName
