# Azure CLI Cheatsheet: Essential Commands for Managing Azure Resources

## Table of Contents
### Section 1: Authentication & Account
1. [az login](#az-login)
2. [az account list](#az-account-list)
3. [az account set](#az-account-set)

### Section 2: Resource Groups & Resources
1. [az group create](#az-group-create)
2. [az group list](#az-group-list)
3. [az resource list](#az-resource-list)

### Section 3: Common Resource Operations
1. [az vm list](#az-vm-list)
2. [az storage account list](#az-storage-account-list)
3. [az network nic list](#az-network-nic-list)

<!-- Section 1 -->
<a id="az-login"></a>
1. az login  
   Description: Autentica all’account Azure.  
   ```
   az login
   ```

<a id="az-account-list"></a>
2. az account list  
   Description: Elenca gli account disponibili.  
   ```
   az account list
   ```

<a id="az-account-set"></a>
3. az account set  
   Description: Imposta l’account da utilizzare.  
   ```
   az account set --subscription "<SubscriptionNameOrID>"
   ```

<!-- Section 2 -->
<a id="az-group-create"></a>
1. az group create  
   Description: Crea un nuovo gruppo di risorse.  
   ```
   az group create --name <resource-group> --location <location>
   ```

<a id="az-group-list"></a>
2. az group list  
   Description: Elenca i gruppi di risorse.  
   ```
   az group list
   ```

<a id="az-resource-list"></a>
3. az resource list  
   Description: Elenca tutte le risorse in un abbonamento o gruppo.  
   ```
   az resource list --resource-group <resource-group>
   ```

<!-- Section 3 -->
<a id="az-vm-list"></a>
1. az vm list  
   Description: Mostra le macchine virtuali registrate.  
   ```
   az vm list --output table
   ```

<a id="az-storage-account-list"></a>
2. az storage account list  
   Description: Elenca gli account di archiviazione.  
   ```
   az storage account list --output table
   ```

<a id="az-network-nic-list"></a>
3. az network nic list  
   Description: Elenca le interfacce di rete.  
   ```
   az network nic list --output table
   ```
