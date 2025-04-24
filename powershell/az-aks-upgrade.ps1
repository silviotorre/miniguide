# az-aks-upgrade.ps1
<#+
.SYNOPSIS
    Upgrades the Kubernetes version of your AKS cluster.
.DESCRIPTION
    This script upgrades the Kubernetes version of a specified AKS cluster.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER ClusterName
    The name of the AKS cluster.
.PARAMETER KubernetesVersion
    The target Kubernetes version.
.EXAMPLE
    .\az-aks-upgrade.ps1 -ResourceGroup myRG -ClusterName myAKS -KubernetesVersion 1.29.0
.NOTES
    Dependencies: Azure CLI (az), user must be logged in and have permission to upgrade AKS clusters.
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$ClusterName,
    [Parameter(Mandatory)]
    [string]$KubernetesVersion
)

az aks upgrade --resource-group $ResourceGroup --name $ClusterName --kubernetes-version $KubernetesVersion
