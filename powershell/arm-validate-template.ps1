# arm-validate-template.ps1
<#+
.SYNOPSIS
    Validates a JSON ARM template.
.DESCRIPTION
    This script validates a JSON ARM template using Azure CLI.
.PARAMETER ResourceGroup
    The name of the Azure resource group.
.PARAMETER TemplateFile
    The path to the ARM template file.
.EXAMPLE
    .\arm-validate-template.ps1 -ResourceGroup MyRG -TemplateFile template.json
.NOTES
    Dependencies: Azure CLI (az)
#>
param(
    [Parameter(Mandatory)]
    [string]$ResourceGroup,
    [Parameter(Mandatory)]
    [string]$TemplateFile
)

az deployment group validate --resource-group $ResourceGroup --template-file $TemplateFile
