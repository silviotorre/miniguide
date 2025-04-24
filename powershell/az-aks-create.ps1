# az-aks-create.ps1
<#+
.SYNOPSIS
    Creates a new Kubernetes cluster on Azure AKS.
.DESCRIPTION
    This script creates a new AKS cluster in the specified resource group.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.PARAMETER NodeCount
    The number of nodes for the cluster.
.EXAMPLE
    .\az-aks-create.ps1 -ResourceGroup myRG -ClusterName myAKS -NodeCount 3
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to create AKS clusters.
    Azure best practice: Use managed identity and avoid hardcoding credentials.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName,
    [Parameter(Mandatory)]
    [int]$NodeCount
)

az aks create --resource-group $ResourceGroup --name $ClusterName --node-count $NodeCount --generate-ssh-keys
