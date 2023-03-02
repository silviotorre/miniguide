**"Azure AKS Cheatsheet: Unlock the Power of Kubernetes on Azure"**
*Tagline: "The Essential Guide to Managing Your Kubernetes Clusters on Azure"*

## Table of Contents
### Section 1: Getting Started
1. [az aks create](#az-aks-create)
2. [az aks get-credentials](#az-aks-get-credentials)
3. [az aks list](#az-aks-list)
4. [az aks show](#az-aks-show)
5. [az aks upgrade](#az-aks-upgrade)
6. [az aks scale](#az-aks-scale)
7. [az aks nodepool add](#az-aks-nodepool-add)
8. [az aks nodepool list](#az-aks-nodepool-list)
9. [az aks nodepool remove](#az-aks-nodepool-remove)
10. [az aks get-versions](#az-aks-get-versions)

### Section 2: Configuring Your Cluster
1. [az aks enable-addons](#az-aks-enable-addons)
2. [az aks disable-addons](#az-aks-disable-addons)
3. [az aks get-upgrades](#az-aks-get-upgrades)
4. [az aks get-update-profile](#az-aks-get-update-profile)
5. [az aks set-context](#az-aks-set-context)
6. [az aks get-credentials](#az-aks-get-credentials-2)
7. [az aks get-versions](#az-aks-get-versions-2)
8. [az aks get-server-version](#az-aks-get-server-version)
9. [az aks use-dev-spaces](#az-aks-use-dev-spaces)
10. [az aks browse](#az-aks-browse)

### Section 3: Managing Your Cluster
1. [az aks get-nodes](#az-aks-get-nodes)
2. [az aks scale](#az-aks-scale-2)
3. [az aks nodepool list](#az-aks-nodepool-list-2)
4. [az aks nodepool add](#az-aks-nodepool-add-2)
5. [az aks nodepool remove](#az-aks-nodepool-remove-2)
6. [az aks node upgrade](#az-aks-node-upgrade)
7. [az aks node drain](#az-aks-node-drain)
8. [az aks node delete](#az-aks-node-delete)
9. [az aks node restart](#az-aks-node-restart)
10. [az aks node list-available-updates](#az-aks-node-list-available-updates)

### Section 4: Troubleshooting
1. [az aks get-versions](#az-aks-get-versions-3)
2. [az aks get-logs](#az-aks-get-logs)
3. [az aks get-credentials](#az-aks-get-credentials-3)
4. [az aks get-update-profile](#az-aks-get-update-profile-2)
5. [az aks browse](#az-aks-browse-2)
6. [az aks show](#az-aks-show-2)
7. [az aks get-connectivity-profile](#az-aks-get-connectivity-profile)
8. [az aks get-upgrades](#az-aks-get-upgrades-2)
9. [az aks get-nodes](#az-aks-get-nodes-2)
10. [az aks node list-available-updates](#az-aks-node-list-available-updates-2)

**Introduction**

Are you looking for an easy way to manage your Kubernetes clusters on Azure? Look no further! This Azure AKS Cheatsheet is the essential guide to unlocking the power of Kubernetes on Azure. With this cheatsheet, you'll be able to quickly and easily manage your Kubernetes clusters with the help of a few simple commands.

### Section 1: Getting Started

<a id="az-aks-create"></a>
1. az aks create  
   Description: Creates a new Kubernetes cluster on Azure.
   ```
   az aks create --resource-group <rg> --name <cluster> --node-count <count> --generate-ssh-keys
   ```

<a id="az-aks-get-credentials"></a>
2. az aks get-credentials  
   Description: Downloads credentials for the specified AKS cluster.
   ```
   az aks get-credentials --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-list"></a>
3. az aks list  
   Description: Lists all AKS clusters in your subscription.
   ```
   az aks list
   ```

<a id="az-aks-show"></a>
4. az aks show  
   Description: Displays details for a specified AKS cluster.
   ```
   az aks show --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-upgrade"></a>
5. az aks upgrade  
   Description: Upgrades the Kubernetes version of your cluster.
   ```
   az aks upgrade --resource-group <rg> --name <cluster> --kubernetes-version <version>
   ```

<a id="az-aks-scale"></a>
6. az aks scale  
   Description: Scales the number of nodes in your cluster.
   ```
   az aks scale --resource-group <rg> --name <cluster> --node-count <count>
   ```

<a id="az-aks-nodepool-add"></a>
7. az aks nodepool add  
   Description: Adds a new node pool to the given cluster.
   ```
   az aks nodepool add --resource-group <rg> --cluster-name <cluster> --name <nodepool-name> --node-count <count>
   ```

<a id="az-aks-nodepool-list"></a>
8. az aks nodepool list  
   Description: Lists all node pools for the specified cluster.
   ```
   az aks nodepool list --resource-group <rg> --cluster-name <cluster>
   ```

<a id="az-aks-nodepool-remove"></a>
9. az aks nodepool remove  
   Description: Removes a specified node pool from the cluster.
   ```
   az aks nodepool remove --resource-group <rg> --cluster-name <cluster> --name <nodepool-name>
   ```

<a id="az-aks-get-versions"></a>
10. az aks get-versions  
    Description: Retrieves a list of available Kubernetes versions for AKS.
    ```
    az aks get-versions --location <location>
    ```

### Section 2: Configuring Your Cluster

<a id="az-aks-enable-addons"></a>
1. az aks enable-addons  
   Description: Enables specified add-ons (e.g., Kubernetes dashboard).
   ```
   az aks enable-addons --resource-group <rg> --name <cluster> --addons <addon-name>
   ```

<a id="az-aks-disable-addons"></a>
2. az aks disable-addons  
   Description: Disables specified add-ons.
   ```
   az aks disable-addons --resource-group <rg> --name <cluster> --addons <addon-name>
   ```

<a id="az-aks-get-upgrades"></a>
3. az aks get-upgrades  
   Description: Lists available upgrade options for your cluster.
   ```
   az aks get-upgrades --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-update-profile"></a>
4. az aks get-update-profile  
   Description: Retrieves the update profile for your cluster.
   ```
   az aks get-update-profile --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-set-context"></a>
5. az aks set-context  
   Description: Sets your current context to the specified cluster.
   ```
   az aks set-context --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-credentials-2"></a>
6. az aks get-credentials  
   Description: (Same as above) Gets cluster credentials.
   ```
   az aks get-credentials --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-versions-2"></a>
7. az aks get-versions  
   Description: (Same as above) Gets available Kubernetes versions.
   ```
   az aks get-versions --location <location>
   ```

<a id="az-aks-get-server-version"></a>
8. az aks get-server-version  
   Description: Displays the Kubernetes server version for the cluster.
   ```
   az aks get-server-version --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-use-dev-spaces"></a>
9. az aks use-dev-spaces  
   Description: Enables Azure Dev Spaces for the cluster.
   ```
   az aks use-dev-spaces --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-browse"></a>
10. az aks browse  
    Description: Opens the cluster’s Kubernetes dashboard in a browser.
    ```
    az aks browse --resource-group <rg> --name <cluster>
    ```

### Section 3: Managing Your Cluster

<a id="az-aks-get-nodes"></a>
1. az aks get-nodes  
   Description: Lists nodes in the specified cluster.
   ```
   az aks get-nodes --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-scale-2"></a>
2. az aks scale  
   Description: (Same as above) Scales the number of nodes.
   ```
   az aks scale --resource-group <rg> --name <cluster> --node-count <count>
   ```

<a id="az-aks-nodepool-list-2"></a>
3. az aks nodepool list  
   Description: (Same as above) Lists node pools.
   ```
   az aks nodepool list --resource-group <rg> --cluster-name <cluster>
   ```

<a id="az-aks-nodepool-add-2"></a>
4. az aks nodepool add  
   Description: (Same as above) Adds a new node pool.
   ```
   az aks nodepool add --resource-group <rg> --cluster-name <cluster> --name <nodepool-name> --node-count <count>
   ```

<a id="az-aks-nodepool-remove-2"></a>
5. az aks nodepool remove  
   Description: (Same as above) Removes a node pool.
   ```
   az aks nodepool remove --resource-group <rg> --cluster-name <cluster> --name <nodepool-name>
   ```

<a id="az-aks-node-upgrade"></a>
6. az aks node upgrade  
   Description: Upgrades nodes within a cluster.
   ```
   az aks node upgrade --resource-group <rg> --cluster-name <cluster> --nodepool <nodepool-name> --kubernetes-version <version>
   ```

<a id="az-aks-node-drain"></a>
7. az aks node drain  
   Description: Drains nodes to safely evict pods.
   ```
   az aks node drain --resource-group <rg> --cluster-name <cluster> --nodepool <nodepool-name>
   ```

<a id="az-aks-node-delete"></a>
8. az aks node delete  
   Description: Deletes specified nodes from the cluster.
   ```
   az aks node delete --resource-group <rg> --cluster-name <cluster> --nodepool <nodepool-name> --node-name <node-name>
   ```

<a id="az-aks-node-restart"></a>
9. az aks node restart  
   Description: Restarts nodes in the cluster.
   ```
   az aks node restart --resource-group <rg> --cluster-name <cluster> --nodepool <nodepool-name> --node-name <node-name>
   ```

<a id="az-aks-node-list-available-updates"></a>
10. az aks node list-available-updates  
    Description: Lists available update options for cluster nodes.
    ```
    az aks node list-available-updates --resource-group <rg> --name <cluster>
    ```

### Section 4: Troubleshooting

<a id="az-aks-get-versions-3"></a>
1. az aks get-versions  
   Description: (Same as above) Checks available Kubernetes versions.
   ```
   az aks get-versions --location <location>
   ```

<a id="az-aks-get-logs"></a>
2. az aks get-logs  
   Description: Retrieves logs for the cluster for troubleshooting.
   ```
   az aks get-logs --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-credentials-3"></a>
3. az aks get-credentials  
   Description: (Same as above) Downloads cluster credentials.
   ```
   az aks get-credentials --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-update-profile-2"></a>
4. az aks get-update-profile  
   Description: (Same as above) Retrieves the update profile.
   ```
   az aks get-update-profile --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-browse-2"></a>
5. az aks browse  
   Description: (Same as above) Opens the Kubernetes dashboard.
   ```
   az aks browse --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-show-2"></a>
6. az aks show  
   Description: (Same as above) Displays details for a specific cluster.
   ```
   az aks show --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-connectivity-profile"></a>
7. az aks get-connectivity-profile  
   Description: Retrieves the connectivity profile of the cluster.
   ```
   az aks get-connectivity-profile --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-upgrades-2"></a>
8. az aks get-upgrades  
   Description: (Same as above) Lists available upgrade options.
   ```
   az aks get-upgrades --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-get-nodes-2"></a>
9. az aks get-nodes  
   Description: (Same as above) Lists all nodes.
   ```
   az aks get-nodes --resource-group <rg> --name <cluster>
   ```

<a id="az-aks-node-list-available-updates-2"></a>
10. az aks node list-available-updates  
    Description: (Same as above) Lists available node updates.
    ```
    az aks node list-available-updates --resource-group <rg> --name <cluster>
    ```

**Conclusion**

*This Azure AKS Cheatsheet is the essential guide to unlocking the power of Kubernetes on Azure. With this cheatsheet, you'll be able to quickly and easily manage your Kubernetes clusters with the help of a few simple commands. So get started today and unlock the power of Kubernetes on Azure!*