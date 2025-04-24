# az-aks-scale.ps1
<#+
.SYNOPSIS
    Scales the number of nodes in your AKS cluster.
.DESCRIPTION
    This script scales the number of nodes in a specified AKS cluster.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.PARAMETER NodeCount
    The desired number of nodes.
.EXAMPLE
    .\az-aks-scale.ps1 -ResourceGroup myRG -ClusterName myAKS -NodeCount 5
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to scale AKS clusters.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName,
    [Parameter(Mandatory)]
    [int]$NodeCount
)

az aks scale --resource-group $ResourceGroup --name $ClusterName --node-count $NodeCount
