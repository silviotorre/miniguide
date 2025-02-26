# Azure PowerShell Modules Cheatsheet: Key Cmdlets for Managing Azure Resources

## Introduction
This cheatsheet covers the principal Azure PowerShell modules and their key cmdlets used by DevOps professionals for resource creation, management, and troubleshooting.

## Table of Contents
1. [Connect-AzAccount](#connect-azaccount)
2. [Get-AzSubscription](#get-azsubscription)
3. [Set-AzContext](#set-azcontext)
4. [Get-AzResourceGroup](#get-azresourcegroup)
5. [New-AzResourceGroup](#new-azresourcegroup)
6. [Get-AzVM](#get-azvm)
7. [New-AzVM](#new-azvm)
8. [Remove-AzVM](#remove-azvm)
9. [Get-AzStorageAccount](#get-azstorageaccount)
10. [New-AzStorageAccount](#new-azstorageaccount)

<a id="connect-azaccount"></a>
### 1. Connect-AzAccount  
**Cmdlet:** Authenticates your PowerShell session with Azure.  
```
Connect-AzAccount
```

<a id="get-azsubscription"></a>
### 2. Get-AzSubscription  
**Cmdlet:** Lists all subscriptions associated with your account.  
```
Get-AzSubscription
```

<a id="set-azcontext"></a>
### 3. Set-AzContext  
**Cmdlet:** Sets the active subscription and resource group context.  
```
Set-AzContext -Subscription "<SubscriptionID>" -ResourceGroupName "<RGName>"
```

<a id="get-azresourcegroup"></a>
### 4. Get-AzResourceGroup  
**Cmdlet:** Retrieves a list of resource groups.  
```
Get-AzResourceGroup
```

<a id="new-azresourcegroup"></a>
### 5. New-AzResourceGroup  
**Cmdlet:** Creates a new resource group.  
```
New-AzResourceGroup -Name "<RGName>" -Location "<Location>"
```

<a id="get-azvm"></a>
### 6. Get-AzVM  
**Cmdlet:** Lists all virtual machines in the subscription.  
```
Get-AzVM
```

<a id="new-azvm"></a>
### 7. New-AzVM  
**Cmdlet:** Creates a new virtual machine from a template.  
```
New-AzVM -ResourceGroupName "<RGName>" -Name "<VMName>" -Location "<Location>" -VirtualNetworkId <vnetID> -SubnetId <subnetID> -ImageName "UbuntuLTS"
```

<a id="remove-azvm"></a>
### 8. Remove-AzVM  
**Cmdlet:** Deletes the specified virtual machine.  
```
Remove-AzVM -ResourceGroupName "<RGName>" -Name "<VMName>" -Force
```

<a id="get-azstorageaccount"></a>
### 9. Get-AzStorageAccount  
**Cmdlet:** Retrieves storage account information.  
```
Get-AzStorageAccount -ResourceGroupName "<RGName>"
```

<a id="new-azstorageaccount"></a>
### 10. New-AzStorageAccount  
**Cmdlet:** Creates a new storage account.  
```
New-AzStorageAccount -ResourceGroupName "<RGName>" -Name "<StorageName>" -SkuName Standard_LRS -Location "<Location>"
```
