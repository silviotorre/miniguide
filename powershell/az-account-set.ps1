# az-account-set.ps1
<#+
.SYNOPSIS
    Sets the Azure subscription to use.
.DESCRIPTION
    This script sets the Azure subscription to use for subsequent commands.
.PARAMETER SubscriptionNameOrID
    The name or ID of the Azure subscription.
.EXAMPLE
    .\az-account-set.ps1 -SubscriptionNameOrID "MySubscription"
.NOTES
    Dependencies: Azure CLI (az)
#>
param(
    [Parameter(Mandatory)]
    [string]$SubscriptionNameOrID
)

az account set --subscription $SubscriptionNameOrID
