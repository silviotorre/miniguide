# Azure ACR Cheatsheet: Manage and Troubleshoot Azure Container Registry

## Introduction
This cheatsheet is designed for DevOps personnel to quickly create, manage, and troubleshoot Azure Container Registry resources utilizing the Azure CLI.

## Table of Contents
- [Azure ACR Cheatsheet: Manage and Troubleshoot Azure Container Registry](#azure-acr-cheatsheet-manage-and-troubleshoot-azure-container-registry)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Create ACR](#1-create-acr)
    - [2. List ACRs](#2-list-acrs)
    - [3. Show ACR Details](#3-show-acr-details)
    - [4. Update ACR](#4-update-acr)
    - [5. Delete ACR](#5-delete-acr)
    - [6. Login to ACR](#6-login-to-acr)
    - [7. Build Container Image](#7-build-container-image)
    - [8. Run Task in ACR](#8-run-task-in-acr)
    - [9. Import Image to ACR](#9-import-image-to-acr)
    - [10. Repository Manifests](#10-repository-manifests)

<a id="create-acr"></a>
### 1. Create ACR  
**Example:** Crea un nuovo registro ACR.  
```
az acr create --name <acrName> --resource-group <rg> --sku Basic --location <location>
```

<a id="list-acrs"></a>
### 2. List ACRs  
**Example:** Elenca tutti i registri ACR nel gruppo di risorse.  
```
az acr list --resource-group <rg> --output table
```

<a id="show-acr-details"></a>
### 3. Show ACR Details  
**Example:** Mostra i dettagli di un registro ACR.  
```
az acr show --name <acrName> --resource-group <rg>
```

<a id="update-acr"></a>
### 4. Update ACR  
**Example:** Aggiorna le impostazioni (ad esempio, abilitare il contenitore admin).  
```
az acr update --name <acrName> --admin-enabled true
```

<a id="delete-acr"></a>
### 5. Delete ACR  
**Example:** Elimina un registro ACR.  
```
az acr delete --name <acrName> --resource-group <rg>
```

<a id="login-to-acr"></a>
### 6. Login to ACR  
**Example:** Effettua il login al registro ACR per autenticarsi con Docker.  
```
az acr login --name <acrName>
```

<a id="build-container-image"></a>
### 7. Build Container Image  
**Example:** Costruisci un’immagine container e salvala nel registro ACR.  
```
az acr build --registry <acrName> --image <imageName>:<tag> .
```

<a id="run-task-in-acr"></a>
### 8. Run Task in ACR  
**Example:** Esegue un task per analisi o scansione dell’immagine.  
```
az acr run --registry <acrName> --cmd "echo Hello World" /dev/null
```

<a id="import-image-to-acr"></a>
### 9. Import Image to ACR  
**Example:** Importa un’immagine da un registro esterno.  
```
az acr import --name <acrName> --source <externalRegistry>/<repository>:<tag>
```

<a id="repository-manifests"></a>
### 10. Repository Manifests  
**Example:** Visualizza i manifesti del repository di un’immagine.  
```
az acr repository show-manifests --name <acrName> --repository <repositoryName>
```
