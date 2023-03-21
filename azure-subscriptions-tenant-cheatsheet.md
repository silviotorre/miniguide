# Azure Subscriptions & Tenant Cheatsheet: Manage Your Azure Environment

## Introduction
This cheatsheet provides key Azure CLI commands to list, view details, and switch between subscriptions and tenants—essential for managing your Azure environment.

## Table of Contents
- [Azure Subscriptions \& Tenant Cheatsheet: Manage Your Azure Environment](#azure-subscriptions--tenant-cheatsheet-manage-your-azure-environment)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. List Subscriptions](#1-list-subscriptions)
    - [2. Show Subscription Details](#2-show-subscription-details)
    - [3. Set Active Subscription](#3-set-active-subscription)
    - [4. List Tenants](#4-list-tenants)
    - [5. Show Tenant Details](#5-show-tenant-details)
    - [6. Get Current Account Info](#6-get-current-account-info)
    - [7. List Subscription Locations](#7-list-subscription-locations)
    - [8. View Subscription Usage](#8-view-subscription-usage)
    - [9. Update Subscription Tags](#9-update-subscription-tags)
    - [10. List Management Groups](#10-list-management-groups)

<a id="list-subscriptions"></a>
### 1. List Subscriptions  
```
az account list --output table
```

<a id="show-subscription-details"></a>
### 2. Show Subscription Details  
```
az account show --subscription <subscriptionId>
```

<a id="set-active-subscription"></a>
### 3. Set Active Subscription  
```
az account set --subscription "<subscriptionNameOrID>"
```

<a id="list-tenants"></a>
### 4. List Tenants  
```
az account tenant list --output table
```

<a id="show-tenant-details"></a>
### 5. Show Tenant Details  
```
az account tenant show --tenant <tenantId>
```

<a id="get-current-account-info"></a>
### 6. Get Current Account Info  
```
az account show
```

<a id="list-subscription-locations"></a>
### 7. List Subscription Locations  
```
az account list-locations --output table
```

<a id="view-subscription-usage"></a>
### 8. View Subscription Usage  
```
az consumption usage list --subscription <subscriptionId> --output table
```

<a id="update-subscription-tags"></a>
### 9. Update Subscription Tags  
```
az account update --subscription <subscriptionId> --set tags.Environment=Prod
```

<a id="list-management-groups"></a>
### 10. List Management Groups  
```
az account management-group list --output table
```
