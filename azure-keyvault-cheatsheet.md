# Azure Key Vault Cheatsheet: Manage Secrets, Keys, and Certificates

## Table of Contents
### Section 1: Vault Management
1. [az keyvault create](#kv-create)
2. [az keyvault list](#kv-list)
3. [az keyvault show](#kv-show)

### Section 2: Secret Management
1. [az keyvault secret set](#kv-secret-set)
2. [az keyvault secret show](#kv-secret-show)
3. [az keyvault secret list](#kv-secret-list)
4. [az keyvault secret delete](#kv-secret-delete)

### Section 3: Key Management
1. [az keyvault key create](#kv-key-create)
2. [az keyvault key list](#kv-key-list)
3. [az keyvault key show](#kv-key-show)

### Section 4: Certificate Management
1. [az keyvault certificate create](#kv-cert-create)
2. [az keyvault certificate list](#kv-cert-list)

<!-- Section 1 -->
<a id="kv-create"></a>
1. az keyvault create  
   Description: Crea un nuovo Key Vault.  
   ```
   az keyvault create --name <vault-name> --resource-group <rg> --location <location>
   ```

<a id="kv-list"></a>
2. az keyvault list  
   Description: Elenca i Key Vault disponibili.  
   ```
   az keyvault list --output table
   ```

<a id="kv-show"></a>
3. az keyvault show  
   Description: Mostra i dettagli di un Key Vault.  
   ```
   az keyvault show --name <vault-name> --resource-group <rg>
   ```

<!-- Section 2 -->
<a id="kv-secret-set"></a>
1. az keyvault secret set  
   Description: Aggiunge o aggiorna un segreto.  
   ```
   az keyvault secret set --vault-name <vault-name> --name <secret-name> --value <secret-value>
   ```

<a id="kv-secret-show"></a>
2. az keyvault secret show  
   Description: Visualizza un segreto specifico.  
   ```
   az keyvault secret show --vault-name <vault-name> --name <secret-name>
   ```

<a id="kv-secret-list"></a>
3. az keyvault secret list  
   Description: Elenca i segreti presenti nel vault.  
   ```
   az keyvault secret list --vault-name <vault-name>
   ```

<a id="kv-secret-delete"></a>
4. az keyvault secret delete  
   Description: Elimina un segreto dal vault.  
   ```
   az keyvault secret delete --vault-name <vault-name> --name <secret-name>
   ```

<!-- Section 3 -->
<a id="kv-key-create"></a>
1. az keyvault key create  
   Description: Crea una nuova chiave.  
   ```
   az keyvault key create --vault-name <vault-name> --name <key-name> --protection software
   ```

<a id="kv-key-list"></a>
2. az keyvault key list  
   Description: Elenca le chiavi presenti.  
   ```
   az keyvault key list --vault-name <vault-name>
   ```

<a id="kv-key-show"></a>
3. az keyvault key show  
   Description: Mostra i dettagli di una chiave.  
   ```
   az keyvault key show --vault-name <vault-name> --name <key-name>
   ```

<!-- Section 4 -->
<a id="kv-cert-create"></a>
1. az keyvault certificate create  
   Description: Crea un certificato.  
   ```
   az keyvault certificate create --vault-name <vault-name> --name <cert-name> --policy "@policy.json"
   ```

<a id="kv-cert-list"></a>
2. az keyvault certificate list  
   Description: Elenca i certificati nel vault.  
   ```
   az keyvault certificate list --vault-name <vault-name>
   ```
