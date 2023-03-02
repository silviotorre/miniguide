# Cosmos DB Cheatsheet: Manage Your Cosmos DB Accounts and Databases

## Table of Contents
### Section 1: Cosmos DB Account Management
1. [az cosmosdb create](#cosmosdb-create)
2. [az cosmosdb list](#cosmosdb-list)
3. [az cosmosdb show](#cosmosdb-show)
4. [az cosmosdb delete](#cosmosdb-delete)

### Section 2: Database and Container Management
1. [az cosmosdb sql database create](#cosmosdb-db-create)
2. [az cosmosdb sql container create](#cosmosdb-container-create)
3. [az cosmosdb sql database list](#cosmosdb-db-list)

<!-- Section 1 -->
<a id="cosmosdb-create"></a>
1. az cosmosdb create  
   Description: Crea un nuovo account Cosmos DB.  
   ```
   az cosmosdb create --name <account-name> --resource-group <rg> --locations regionName=<region>
   ```

<a id="cosmosdb-list"></a>
2. az cosmosdb list  
   Description: Elenca gli account Cosmos DB.  
   ```
   az cosmosdb list --output table
   ```

<a id="cosmosdb-show"></a>
3. az cosmosdb show  
   Description: Mostra i dettagli di un account Cosmos DB.  
   ```
   az cosmosdb show --name <account-name> --resource-group <rg>
   ```

<a id="cosmosdb-delete"></a>
4. az cosmosdb delete  
   Description: Elimina un account Cosmos DB.  
   ```
   az cosmosdb delete --name <account-name> --resource-group <rg>
   ```

<!-- Section 2 -->
<a id="cosmosdb-db-create"></a>
1. az cosmosdb sql database create  
   Description: Crea un database SQL in Cosmos DB.  
   ```
   az cosmosdb sql database create --account-name <account-name> --resource-group <rg> --name <database-name>
   ```

<a id="cosmosdb-container-create"></a>
2. az cosmosdb sql container create  
   Description: Crea un container (collezione) in un database Cosmos DB.  
   ```
   az cosmosdb sql container create --account-name <account-name> --resource-group <rg> --database-name <database-name> --name <container-name> --partition-key-path "/<partition-key>"
   ```

<a id="cosmosdb-db-list"></a>
3. az cosmosdb sql database list  
   Description: Elenca i database SQL di un account Cosmos DB.  
   ```
   az cosmosdb sql database list --account-name <account-name> --resource-group <rg>
   ```
