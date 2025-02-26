# Azure SQL Cheatsheet: Managing Azure Managed Databases

## Introduction
This cheatsheet provides essential Azure CLI commands for creating, configuring, and troubleshooting Azure SQL Databases and Managed Instances. It is designed for DevOps professionals managing SQL resources in Azure.

## Table of Contents
- [Azure SQL Cheatsheet: Managing Azure Managed Databases](#azure-sql-cheatsheet-managing-azure-managed-databases)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Create Azure SQL Server](#1-create-azure-sql-server)
    - [2. Create Azure SQL Database](#2-create-azure-sql-database)
    - [3. List SQL Databases](#3-list-sql-databases)
    - [4. Get SQL Database Details](#4-get-sql-database-details)
    - [5. Update SQL Database](#5-update-sql-database)
    - [6. Delete SQL Database](#6-delete-sql-database)
    - [7. Set Firewall Rules](#7-set-firewall-rules)
    - [8. Export Database](#8-export-database)
    - [9. Import Database](#9-import-database)
    - [10. Monitor Database Performance](#10-monitor-database-performance)

<a id="create-sql-server"></a>
### 1. Create Azure SQL Server
```
az sql server create --name <serverName> --resource-group <rg> --location <location> --admin-user <user> --admin-password <password>
```

<a id="create-sql-database"></a>
### 2. Create Azure SQL Database
```
az sql db create --resource-group <rg> --server <serverName> --name <dbName> --service-objective S0
```

<a id="list-sql-databases"></a>
### 3. List SQL Databases
```
az sql db list --resource-group <rg> --server <serverName> --output table
```

<a id="sql-database-details"></a>
### 4. Get SQL Database Details
```
az sql db show --resource-group <rg> --server <serverName> --name <dbName>
```

<a id="update-sql-database"></a>
### 5. Update SQL Database
```
az sql db update --resource-group <rg> --server <serverName> --name <dbName> --service-objective S1
```

<a id="delete-sql-database"></a>
### 6. Delete SQL Database
```
az sql db delete --resource-group <rg> --server <serverName> --name <dbName> --yes
```

<a id="set-firewall"></a>
### 7. Set Firewall Rules
```
az sql server firewall-rule create --resource-group <rg> --server <serverName> --name AllowMyIP --start-ip-address <ip> --end-ip-address <ip>
```

<a id="export-database"></a>
### 8. Export Database
```
az sql db export --admin-password <password> --admin-user <user> --name <dbName> --resource-group <rg> --server <serverName> --storage-key <storageKey> --storage-key-type StorageAccessKey --storage-uri "<blobSasUri>"
```

<a id="import-database"></a>
### 9. Import Database
```
az sql db import --admin-password <password> --admin-user <user> --name <dbName> --resource-group <rg> --server <serverName> --storage-key <storageKey> --storage-key-type StorageAccessKey --storage-uri "<blobSasUri>"
```

<a id="monitor-performance"></a>
### 10. Monitor Database Performance
```
az sql db show-usage --resource-group <rg> --server <serverName> --name <dbName> --output table
```
