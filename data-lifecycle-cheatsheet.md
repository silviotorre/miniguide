# Data Lifecycle Cheatsheet: Managing Retention and TTL for Storage

## Introduction
This cheatsheet offers commands and configuration snippets to manage the lifecycle of data in storage systems. It covers setting TTL for Cosmos DB, configuring log retention, and automating data cleanup. It is designed for DevOps professionals focused on resource management and cost optimization.

## Table of Contents
- [Data Lifecycle Cheatsheet: Managing Retention and TTL for Storage](#data-lifecycle-cheatsheet-managing-retention-and-ttl-for-storage)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Set TTL on Cosmos DB Container](#1-set-ttl-on-cosmos-db-container)
    - [2. Query Data Based on TTL](#2-query-data-based-on-ttl)
    - [3. Configure Automatic Cleanup (Cosmos DB)](#3-configure-automatic-cleanup-cosmos-db)
    - [4. Set Retention Policy on Azure Storage](#4-set-retention-policy-on-azure-storage)
    - [5. Configure Log Disk Retention](#5-configure-log-disk-retention)
    - [6. Export Log Data](#6-export-log-data)
    - [7. Delete Old Blobs Automatically](#7-delete-old-blobs-automatically)
    - [8. Monitor Storage Metrics](#8-monitor-storage-metrics)
    - [9. Update TTL Settings via ARM](#9-update-ttl-settings-via-arm)
    - [10. Audit Data Lifecycle Settings](#10-audit-data-lifecycle-settings)

<a id="set-ttl-cosmos"></a>
### 1. Set TTL on Cosmos DB Container  
```
az cosmosdb collection create --collection-name MyCollection --db-name MyDatabase --resource-group <rg> --name <cosmosAccountName> --ttl 3600
```

<a id="query-ttl-cosmos"></a>
### 2. Query Data Based on TTL  
```
SELECT * FROM MyCollection c WHERE c._ts < (UnixTimestamp() - 3600)
```

<a id="cosmos-auto-cleanup"></a>
### 3. Configure Automatic Cleanup (Cosmos DB)  
*Using Azure Functions trigger on TTL expiry.*
```
// Configure Azure Function to trigger deletion of expired items.
```

<a id="storage-retention"></a>
### 4. Set Retention Policy on Azure Storage  
```
az storage account management-policy create --account-name <accountName> --resource-group <rg> --policy @"policy.json"
```
*(policy.json should contain retention rules)*

<a id="log-retention"></a>
### 5. Configure Log Disk Retention  
```
az monitor diagnostic-settings create --name "RetentionPolicy" --resource <resourceId> --logs '[{"category": "AuditLogs", "enabled": true, "retentionPolicy": {"days": 30, "enabled": true}}]'
```

<a id="export-logs"></a>
### 6. Export Log Data  
```
az monitor log-analytics query --workspace "<workspaceId>" --query "AzureDiagnostics | where TimeGenerated > ago(7d)" --output table
```

<a id="delete-old-blobs"></a>
### 7. Delete Old Blobs Automatically  
```
az storage blob delete-batch --source <containerName> --pattern "*.*" --if-unmodified-since "2022-01-01T00:00:00Z"
```

<a id="monitor-storage"></a>
### 8. Monitor Storage Metrics  
```
az monitor metrics list --resource <storageResourceId> --metric "Transactions" --output table
```

<a id="update-ttl-arm"></a>
### 9. Update TTL Settings via ARM  
```
az deployment group create --resource-group <rg> --template-file ttlTemplate.json
```

<a id="audit-lifecycle"></a>
### 10. Audit Data Lifecycle Settings  
```
az monitor diagnostic-settings list --resource <resourceId> --output table
```
