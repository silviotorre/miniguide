# Azure Storage Account Cheatsheet: Manage and Troubleshoot Storage Accounts on Azure

## Introduction
This cheatsheet is designed for DevOps professionals to efficiently create, manage, and troubleshoot Azure Storage Accounts using Azure CLI.

## Table of Contents
- [Azure Storage Account Cheatsheet: Manage and Troubleshoot Storage Accounts on Azure](#azure-storage-account-cheatsheet-manage-and-troubleshoot-storage-accounts-on-azure)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Create Storage Account](#1-create-storage-account)
    - [2. List Storage Accounts](#2-list-storage-accounts)
    - [3. Show Storage Account Details](#3-show-storage-account-details)
    - [4. Update Storage Account](#4-update-storage-account)
    - [5. Delete Storage Account](#5-delete-storage-account)
    - [6. List Storage Account Keys](#6-list-storage-account-keys)
    - [7. Renew Storage Account Keys](#7-renew-storage-account-keys)
    - [8. Create Storage Container](#8-create-storage-container)
    - [9. Upload Blob](#9-upload-blob)
    - [10. Download Blob](#10-download-blob)

<a id="create-storage-account"></a>
### 1. Create Storage Account  
**Example:** Crea un nuovo Storage Account.  
```
az storage account create --name <accountName> --resource-group <rg> --location <location> --sku Standard_LRS
```

<a id="list-storage-accounts"></a>
### 2. List Storage Accounts  
**Example:** Elenca gli Storage Accounts nel gruppo di risorse.  
```
az storage account list --resource-group <rg> --output table
```

<a id="show-storage-account-details"></a>
### 3. Show Storage Account Details  
**Example:** Mostra i dettagli di un Storage Account.  
```
az storage account show --name <accountName> --resource-group <rg>
```

<a id="update-storage-account"></a>
### 4. Update Storage Account  
**Example:** Aggiorna le impostazioni di un Storage Account.  
```
az storage account update --name <accountName> --resource-group <rg> --set tags.Environment=Dev
```

<a id="delete-storage-account"></a>
### 5. Delete Storage Account  
**Example:** Elimina uno Storage Account.  
```
az storage account delete --name <accountName> --resource-group <rg> --yes
```

<a id="list-storage-keys"></a>
### 6. List Storage Account Keys  
**Example:** Elenca le chiavi d’accesso dello Storage Account.  
```
az storage account keys list --account-name <accountName> --resource-group <rg>
```

<a id="renew-storage-keys"></a>
### 7. Renew Storage Account Keys  
**Example:** Rigenera una chiave per lo Storage Account.  
```
az storage account keys renew --account-name <accountName> --resource-group <rg> --key primary
```

<a id="create-storage-container"></a>
### 8. Create Storage Container  
**Example:** Crea un container in uno Storage Account.  
```
az storage container create --name <containerName> --account-name <accountName>
```

<a id="upload-blob"></a>
### 9. Upload Blob  
**Example:** Carica un blob in un container.  
```
az storage blob upload --account-name <accountName> --container-name <containerName> --name <blobName> --file <filePath>
```

<a id="download-blob"></a>
### 10. Download Blob  
**Example:** Scarica un blob da un container.  
```
az storage blob download --account-name <accountName> --container-name <containerName> --name <blobName> --file <destinationPath>
```
