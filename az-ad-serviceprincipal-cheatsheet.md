# Azure AD & Service Principal Cheatsheet: Create, Manage, and Troubleshoot

## Introduction
This cheatsheet is aimed at DevOps professionals using Azure AD. It covers commands for creating, managing, and troubleshooting service principals and their role assignments.

## Table of Contents
- [Azure AD \& Service Principal Cheatsheet: Create, Manage, and Troubleshoot](#azure-ad--service-principal-cheatsheet-create-manage-and-troubleshoot)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Create Service Principal](#1-create-service-principal)
    - [2. List Service Principals](#2-list-service-principals)
    - [3. Show Service Principal Details](#3-show-service-principal-details)
    - [4. Delete Service Principal](#4-delete-service-principal)
    - [5. Reset SP Credentials](#5-reset-sp-credentials)
    - [6. List Role Assignments for SP](#6-list-role-assignments-for-sp)
    - [7. Assign Role to SP](#7-assign-role-to-sp)
    - [8. Remove Role from SP](#8-remove-role-from-sp)
    - [9. Troubleshoot SP Login Issues](#9-troubleshoot-sp-login-issues)
    - [10. Verify Effective Permissions](#10-verify-effective-permissions)

<a id="create-sp"></a>
### 1. Create Service Principal  
```
az ad sp create-for-rbac --name <appName> --role Contributor --scopes /subscriptions/<subscriptionId>
```

<a id="list-sp"></a>
### 2. List Service Principals  
```
az ad sp list --filter "displayName eq '<appName>'" --output table
```

<a id="show-sp"></a>
### 3. Show Service Principal Details  
```
az ad sp show --id <servicePrincipalId>
```

<a id="delete-sp"></a>
### 4. Delete Service Principal  
```
az ad sp delete --id <servicePrincipalId>
```

<a id="reset-sp-credentials"></a>
### 5. Reset SP Credentials  
```
az ad sp credential reset --name <appName> --credential-description "NewCred" --end-date "2025-01-01"
```

<a id="list-role-assignments"></a>
### 6. List Role Assignments for SP  
```
az role assignment list --assignee <servicePrincipalId> --output table
```

<a id="assign-role-to-sp"></a>
### 7. Assign Role to SP  
```
az role assignment create --assignee <servicePrincipalId> --role Reader --scope /subscriptions/<subscriptionId>
```

<a id="remove-role-from-sp"></a>
### 8. Remove Role from SP  
```
az role assignment delete --assignee <servicePrincipalId> --role Reader --scope /subscriptions/<subscriptionId>
```

<a id="troubleshoot-sp-login"></a>
### 9. Troubleshoot SP Login Issues  
```
az login --service-principal --username <appId> --password <passwordOrCert> --tenant <tenantId>
```

<a id="verify-permissions"></a>
### 10. Verify Effective Permissions  
```
az role assignment list --assignee <servicePrincipalId> --query "[].{Role:roleDefinitionName, Scope:scope}" --output table
```
