# Azure VM Cheatsheet: Manage Virtual Machines on Azure

## Introduction
This cheatsheet provides essential Azure CLI commands for DevOps professionals to create, manage, and troubleshoot Azure Virtual Machines.

## Table of Contents
- [Azure VM Cheatsheet: Manage Virtual Machines on Azure](#azure-vm-cheatsheet-manage-virtual-machines-on-azure)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Create VM](#1-create-vm)
    - [2. List VMs](#2-list-vms)
    - [3. Show VM Details](#3-show-vm-details)
    - [4. Delete VM](#4-delete-vm)
    - [5. Deallocate VM](#5-deallocate-vm)
    - [6. Start VM](#6-start-vm)
    - [7. Stop VM](#7-stop-vm)
    - [8. Restart VM](#8-restart-vm)
    - [9. Capture VM Image](#9-capture-vm-image)
    - [10. Add VM Extension](#10-add-vm-extension)

<a id="create-vm"></a>
### 1. Create VM  
**Example:** Crea una nuova macchina virtuale.  
```
az vm create --resource-group <rg> --name <vmName> --image UbuntuLTS --admin-username <user> --generate-ssh-keys
```

<a id="list-vms"></a>
### 2. List VMs  
**Example:** Elenca tutte le VM in un gruppo di risorse.  
```
az vm list --resource-group <rg> --output table
```

<a id="show-vm-details"></a>
### 3. Show VM Details  
**Example:** Visualizza i dettagli di una VM.  
```
az vm show --resource-group <rg> --name <vmName>
```

<a id="delete-vm"></a>
### 4. Delete VM  
**Example:** Elimina una macchina virtuale.  
```
az vm delete --resource-group <rg> --name <vmName> --yes
```

<a id="deallocate-vm"></a>
### 5. Deallocate VM  
**Example:** Dealloca (spegni) una VM per risparmiare costi.  
```
az vm deallocate --resource-group <rg> --name <vmName>
```

<a id="start-vm"></a>
### 6. Start VM  
**Example:** Avvia una VM deallocata.  
```
az vm start --resource-group <rg> --name <vmName>
```

<a id="stop-vm"></a>
### 7. Stop VM  
**Example:** Ferma una VM in esecuzione.  
```
az vm stop --resource-group <rg> --name <vmName>
```

<a id="restart-vm"></a>
### 8. Restart VM  
**Example:** Riavvia una VM.  
```
az vm restart --resource-group <rg> --name <vmName>
```

<a id="capture-vm-image"></a>
### 9. Capture VM Image  
**Example:** Cattura un’immagine di una VM per creare template.  
```
az vm capture --resource-group <rg> --name <vmName> --vhd-name-prefix <prefix> --destination-container <containerName>
```

<a id="add-vm-extension"></a>
### 10. Add VM Extension  
**Example:** Aggiungi un’estensione (ad esempio, per il monitoraggio) a una VM.  
```
az vm extension set --resource-group <rg> --vm-name <vmName> --name <extensionName> --publisher Microsoft.Azure.Extensions
```
