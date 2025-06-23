# az-aks-nodepool-add.ps1
<#+
.SYNOPSIS
    Adds a new node pool to the given AKS cluster.
.DESCRIPTION
    This script adds a new node pool to a specified AKS cluster.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.PARAMETER NodepoolName
    The name of the node pool to add.
.PARAMETER NodeCount
    The number of nodes for the new node pool.
.EXAMPLE
    .\az-aks-nodepool-add.ps1 -ResourceGroup myRG -ClusterName myAKS -NodepoolName np1 -NodeCount 2
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to modify AKS clusters.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName,
    [Parameter(Mandatory)]
    [string]$NodepoolName,
    [Parameter(Mandatory)]
    [int]$NodeCount
)

az aks nodepool add --resource-group $ResourceGroup --cluster-name $ClusterName --name $NodepoolName --node-count $NodeCount
