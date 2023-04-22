# Azure Backup Cheatsheet: Create, Manage, and Troubleshoot Azure Backups

## Introduction
This cheatsheet provides essential Azure CLI commands for configuring, managing, and troubleshooting backups in Azure, including Recovery Services vault operations.

## Table of Contents
1. [Create Recovery Services Vault](#create-recovery-vault)
2. [List Recovery Services Vaults](#list-recovery-vaults)
3. [Configure Backup on VM](#configure-backup-vm)
4. [Enable Backup for Azure VMs](#enable-backup-vm)
5. [Trigger Backup Job](#trigger-backup-job)
6. [List Backup Jobs](#list-backup-jobs)
7. [Show Backup Job Details](#backup-job-details)
8. [Restore VM from Backup](#restore-vm)
9. [Update Backup Policy](#update-backup-policy)
10. [Delete Backup Item](#delete-backup-item)

<a id="create-recovery-vault"></a>
### 1. Create Recovery Services Vault  
```
az backup vault create --resource-group <rg> --name <vaultName> --location <location>
```

<a id="list-recovery-vaults"></a>
### 2. List Recovery Services Vaults  
```
az backup vault list --resource-group <rg> --output table
```

<a id="configure-backup-vm"></a>
### 3. Configure Backup on VM  
```
az backup protection enable-for-vm --resource-group <rg> --vault-name <vaultName> --vm <vmName> --policy-name DefaultPolicy
```

<a id="enable-backup-vm"></a>
### 4. Enable Backup for Azure VMs  
```
az backup protection backup-now --resource-group <rg> --vault-name <vaultName> --container-name <container> --item-name <vmName>
```

<a id="trigger-backup-job"></a>
### 5. Trigger Backup Job  
```
az backup job list --resource-group <rg> --vault-name <vaultName> --output table
```

<a id="list-backup-jobs"></a>
### 6. List Backup Jobs  
```
az backup job list --resource-group <rg> --vault-name <vaultName>
```

<a id="backup-job-details"></a>
### 7. Show Backup Job Details  
```
az backup job show --resource-group <rg> --vault-name <vaultName> --name <jobId>
```

<a id="restore-vm"></a>
### 8. Restore VM from Backup  
```
az backup recoverypoint list --resource-group <rg> --vault-name <vaultName> --container-name <container> --item-name <vmName> --output table
```

<a id="update-backup-policy"></a>
### 9. Update Backup Policy  
```
az backup policy set --resource-group <rg> --vault-name <vaultName> --name <policyName> --backup-management-type AzureIaasVM --retention-duration 30
```

<a id="delete-backup-item"></a>
### 10. Delete Backup Item  
```
az backup item delete --resource-group <rg> --vault-name <vaultName> --container-name <container> --name <itemName> --delete-from-backup-storage true
```
