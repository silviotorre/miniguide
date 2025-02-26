# Azure Auth & AuthZ Cheatsheet: Manage Authentication and Authorization

## Introduction
This cheatsheet provides commands to manage authentication and authorization in Azure. It covers role assignments, identity provider configurations, and security policies. Designed for DevOps, it assists in creation, management, and troubleshooting of Azure AUTH and AUTHZ.

## Table of Contents
- [Azure Auth \& AuthZ Cheatsheet: Manage Authentication and Authorization](#azure-auth--authz-cheatsheet-manage-authentication-and-authorization)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. List Current User Roles](#1-list-current-user-roles)
    - [2. Assign Role to User](#2-assign-role-to-user)
    - [3. Remove Role from User](#3-remove-role-from-user)
    - [4. List Role Assignments](#4-list-role-assignments)
    - [5. Configure Conditional Access](#5-configure-conditional-access)
    - [6. Get Azure AD Policies](#6-get-azure-ad-policies)
    - [7. Create Custom Role](#7-create-custom-role)
    - [8. Update Custom Role](#8-update-custom-role)
    - [9. Delete Custom Role](#9-delete-custom-role)
    - [10. Audit Auth Events](#10-audit-auth-events)

<a id="list-current-user-roles"></a>
### 1. List Current User Roles
```
az role assignment list --assignee $(az ad signed-in-user show --query objectId -o tsv) --output table
```

<a id="assign-role-to-user"></a>
### 2. Assign Role to User
```
az role assignment create --assignee <userId> --role Contributor --scope /subscriptions/<subscriptionId>
```

<a id="remove-role-from-user"></a>
### 3. Remove Role from User
```
az role assignment delete --assignee <userId> --role Contributor --scope /subscriptions/<subscriptionId>
```

<a id="list-role-assignments"></a>
### 4. List Role Assignments
```
az role assignment list --output table
```

<a id="configure-conditional-access"></a>
### 5. Configure Conditional Access
*Note: Conditional Access policies are mostly configured via portal, but you can export/import policies.*
```
az rest --method GET --uri "https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies"
```

<a id="get-ad-policies"></a>
### 6. Get Azure AD Policies
```
az ad policy list --output table
```

<a id="create-custom-role"></a>
### 7. Create Custom Role
```
az role definition create --role-definition @custom-role.json
```

<a id="update-custom-role"></a>
### 8. Update Custom Role
```
az role definition update --role-definition @updated-role.json
```

<a id="delete-custom-role"></a>
### 9. Delete Custom Role
```
az role definition delete --name <roleName>
```

<a id="audit-auth-events"></a>
### 10. Audit Auth Events
```
az monitor activity-log list --resource-group <rg> --query "[?contains(operationName.value, 'SignIn')]" --output table
```
