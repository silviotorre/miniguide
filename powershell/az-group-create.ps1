# az-group-create.ps1
<#+
.SYNOPSIS
    Creates a new Azure resource group.
.DESCRIPTION
    This script creates a new Azure resource group in the specified location.
.PARAMETER ResourceGroup
    The name of the resource group.
.PARAMETER Location
    The Azure region (e.g., westeurope).
.EXAMPLE
    .\az-group-create.ps1 -ResourceGroup myRG -Location westeurope
.NOTES
    Dependencies: Azure CLI (az)
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$Location
)

az group create --name $ResourceGroup --location $Location
