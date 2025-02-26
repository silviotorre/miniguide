# Azure Function App & App Service Plan Cheatsheet: Create, Manage, and Troubleshoot

## Introduction
This cheatsheet is designed for DevOps professionals. It covers essential Azure CLI commands to create, manage, and troubleshoot Function Apps and App Service Plans on Azure.

## Table of Contents
- [Azure Function App \& App Service Plan Cheatsheet: Create, Manage, and Troubleshoot](#azure-function-app--app-service-plan-cheatsheet-create-manage-and-troubleshoot)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Create Function App](#1-create-function-app)
    - [2. List Function Apps](#2-list-function-apps)
    - [3. Show Function App Details](#3-show-function-app-details)
    - [4. Delete Function App](#4-delete-function-app)
    - [5. Create App Service Plan](#5-create-app-service-plan)
    - [6. List App Service Plans](#6-list-app-service-plans)
    - [7. Update App Service Plan](#7-update-app-service-plan)
    - [8. Scale App Service Plan](#8-scale-app-service-plan)
    - [9. Restart Function App](#9-restart-function-app)
    - [10. Deploy to Function App](#10-deploy-to-function-app)

<a id="create-function-app"></a>
### 1. Create Function App  
Example: Create a new Function App with a consumption plan.
```
az functionapp create --resource-group <rg> --consumption-plan-location <location> --runtime node --functions-version 3 --name <functionAppName> --storage-account <storageName>
```

<a id="list-function-apps"></a>
### 2. List Function Apps  
Example: List all Function Apps in a resource group.
```
az functionapp list --resource-group <rg> --output table
```

<a id="show-function-app-details"></a>
### 3. Show Function App Details  
Example: Display details of a specific Function App.
```
az functionapp show --name <functionAppName> --resource-group <rg>
```

<a id="delete-function-app"></a>
### 4. Delete Function App  
Example: Delete a Function App.
```
az functionapp delete --name <functionAppName> --resource-group <rg>
```

<a id="create-app-service-plan"></a>
### 5. Create App Service Plan  
Example: Create an App Service Plan.
```
az appservice plan create --name <planName> --resource-group <rg> --sku S1 --is-linux
```

<a id="list-app-service-plans"></a>
### 6. List App Service Plans  
Example: List all App Service Plans in a resource group.
```
az appservice plan list --resource-group <rg> --output table
```

<a id="update-app-service-plan"></a>
### 7. Update App Service Plan  
Example: Update the SKU for an App Service Plan.
```
az appservice plan update --name <planName> --resource-group <rg> --sku P1V2
```

<a id="scale-app-service-plan"></a>
### 8. Scale App Service Plan  
Example: Scale out the App Service Plan.
```
az appservice plan update --name <planName> --resource-group <rg> --number-of-workers <count>
```

<a id="restart-function-app"></a>
### 9. Restart Function App  
Example: Restart a Function App.
```
az functionapp restart --name <functionAppName> --resource-group <rg>
```

<a id="deploy-to-function-app"></a>
### 10. Deploy to Function App  
Example: Deploy code from a local folder to a Function App.
```
az functionapp deployment source config-zip --name <functionAppName> --resource-group <rg> --src <zipFilePath>
```
