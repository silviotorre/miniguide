## Table of Contents
1. [Get-AzAks](#get-azaaks)
2. [Get-AzAksNode](#get-azaksnode)
3. [Get-AzAksPod](#get-azakspod)
4. [Get-AzAksService](#get-azaksservice)
5. [Get-AzAksDiagnostics](#get-azaksdiagnostics)
6. [Get-AzAksUpgrade](#get-azaksupgrade)
7. [Get-AzAksScale](#get-azaksscale)
8. [Get-AzAksLogs](#get-azakslogs)
9. [Azure Context Setup](#azure-context-setup)
10. [Kubectl Commands](#kubectl-commands)

The following are some useful commands in PowerShell for AKS cluster, node, and pod administration and common troubleshooting:

### PowerShell Commands for AKS

<a id="get-azaaks"></a>
1. Get-AzAks  
   Description: Lists all AKS clusters in your subscription.
   ```  
   Get-AzAks  
   ```

<a id="get-azaksnode"></a>
2. Get-AzAksNode  
   Description: Retrieves details on all nodes in a given AKS cluster.
   ```  
   Get-AzAksNode  
   ```

<a id="get-azakspod"></a>
3. Get-AzAksPod  
   Description: Lists all pods running in the cluster.
   ```  
   Get-AzAksPod  
   ```

<a id="get-azaksservice"></a>
4. Get-AzAksService  
   Description: Shows all services available in the cluster.
   ```  
   Get-AzAksService  
   ```

<a id="get-azaksdiagnostics"></a>
5. Get-AzAksDiagnostics  
   Description: Retrieves diagnostic logs to help troubleshoot issues.
   ```  
   Get-AzAksDiagnostics  
   ```

<a id="get-azaksupgrade"></a>
6. Get-AzAksUpgrade  
   Description: Lists available upgrades for the AKS cluster.
   ```  
   Get-AzAksUpgrade  
   ```

<a id="get-azaksscale"></a>
7. Get-AzAksScale  
   Description: Displays current scaling settings; can be used to adjust node counts.
   ```  
   Get-AzAksScale  
   ```

<a id="get-azakslogs"></a>
8. Get-AzAksLogs  
   Description: Retrieves logs from the AKS cluster for troubleshooting.
   ```  
   Get-AzAksLogs  
   ```

<a id="azure-context-setup"></a>
### Azure Context Setup

Before running commands, set your Azure context:
1. Connect-AzAccount  
   Description: Log in to your Azure account.
   ```  
   Connect-AzAccount  
   ```

2. Select-AzSubscription  
   Description: Choose the subscription you want to work with.
   ```  
   Select-AzSubscription -SubscriptionName "<YourSubscriptionName>"  
   ```

3. Set-AzContext  
   Description: Set the context to the resource group that holds your AKS cluster.
   ```  
   Set-AzContext -ResourceGroupName "<YourResourceGroup>"  
   ```

<a id="kubectl-commands"></a>
### Kubernetes Administrative Commands

1. kubectl drain  
   Description: Safely evicts all pods from a node before maintenance.
   ```  
   kubectl drain <node-name> --ignore-daemonsets  
   ```

2. kubectl cordon  
   Description: Marks a node as unschedulable.
   ```  
   kubectl cordon <node-name>  
   ```

3. kubectl taint  
   Description: Adds, modifies, or removes taints to control pod scheduling.
   ```  
   kubectl taint nodes <node-name> key=value:NoSchedule  
   ```

In order to use the above commands, you will need to have the appropriate permissions. For example, you will need to be an Owner or Contributor of the resource group containing the AKS cluster in order to use the Get-AzAks command.

In order to set the context, you will need to log in to your Azure account using the Connect-AzAccount command. Once you have logged in, you will need to select the subscription you want to use with the Select-AzSubscription command. Finally, you will need to set the context to the resource group containing the AKS cluster with the Set-AzContext command.

A simple guide to complete these steps is as follows:

1. Log in to your Azure account using the **Connect-AzAccount** command.

2. Select the subscription you want to use with the **Select-AzSubscription** command.

3. Set the context to the resource group containing the AKS cluster with the **Set-AzContext** command.

4. Use the **Get-AzAks** command to list all the AKS clusters in the Azure subscription.

5. Use the other **Get-AzAks** commands to list nodes, pods, services, and more.

in order to execute administrative tasks such as draining nodes, cordoning, or modifying taints you will need to use __kubectl__. Some useful commands include:

1. **kubectl drain**: This command is used to drain a node in an AKS cluster. It can be used to safely evict all pods from the node and make it unavailable for scheduling new pods.

2. **kubectl cordon**: This command is used to mark a node as unschedulable. It can be used to prevent new pods from being scheduled on the node.

3. **kubectl taint**: This command is used to add, modify, or remove taints on a node. It can be used to control which pods can be scheduled on the node.

In order to use these commands, you will need to have the appropriate permissions. For example, you will need to be an Owner or Contributor of the resource group containing the AKS cluster in order to use the kubectl commands.

In order to set the context, you will need to log in to your Azure account using the **Connect-AzAccount** command. Once you have logged in, you will need to select the subscription you want to use with the **Select-AzSubscription** command. Finally, you will need to set the context to the resource group containing the AKS cluster with the **Set-AzContext** command.

A simple guide to complete these steps is as follows:

1. Log in to your Azure account using the **Connect-AzAccount** command.

2. Select the subscription you want to use with the **Select-AzSubscription** command.

3. Set the context to the resource group containing the AKS cluster with the **Set-AzContext** command.

4. Use the kubectl drain, cordon, and taint commands to manage nodes in the AKS cluster.

