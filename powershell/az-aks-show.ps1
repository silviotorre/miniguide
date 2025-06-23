# az-aks-show.ps1
<#+
.SYNOPSIS
    Displays details for a specified AKS cluster.
.DESCRIPTION
    This script displays details for a specified AKS cluster in Azure.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.EXAMPLE
    .\az-aks-show.ps1 -ResourceGroup myRG -ClusterName myAKS
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to access AKS clusters.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName
)

az aks show --resource-group $ResourceGroup --name $ClusterName
