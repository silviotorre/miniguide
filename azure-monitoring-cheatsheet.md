# Azure Monitoring Cheatsheet: Track and Monitor Your Azure Resources

## Table of Contents
### Section 1: Metrics and Logs
1. [az monitor metrics list](#monitor-metrics-list)
2. [az monitor log-analytics workspace list](#monitor-la-list)

### Section 2: Alert Management
1. [az monitor alert create](#monitor-alert-create)
2. [az monitor alert list](#monitor-alert-list)
3. [az monitor alert delete](#monitor-alert-delete)

### Section 3: Activity and Diagnostic Logs
1. [az monitor activity-log list](#monitor-activity-log-list)
2. [az monitor diagnostic-settings list](#monitor-diagnostic-settings-list)

<!-- Section 1 -->
<a id="monitor-metrics-list"></a>
1. az monitor metrics list  
   Description: Recupera metriche per una risorsa specifica.  
   ```
   az monitor metrics list --resource <resource-id> --metric <metric-name>
   ```

<a id="monitor-la-list"></a>
2. az monitor log-analytics workspace list  
   Description: Elenca i workspace Log Analytics.  
   ```
   az monitor log-analytics workspace list --resource-group <rg>
   ```

<!-- Section 2 -->
<a id="monitor-alert-create"></a>
1. az monitor alert create  
   Description: Crea una regola di alerting.  
   ```
   az monitor alert create --name <alert-name> --resource-group <rg> --scopes <resource-id> --condition "<condition>" --action <action-group-id>
   ```

<a id="monitor-alert-list"></a>
2. az monitor alert list  
   Description: Elenca le regole di alerting.  
   ```
   az monitor alert list --resource-group <rg>
   ```

<a id="monitor-alert-delete"></a>
3. az monitor alert delete  
   Description: Elimina una regola di alerting.  
   ```
   az monitor alert delete --name <alert-name> --resource-group <rg>
   ```

<!-- Section 3 -->
<a id="monitor-activity-log-list"></a>
1. az monitor activity-log list  
   Description: Elenca gli activity log per un abbonamento o risorsa.  
   ```
   az monitor activity-log list --resource-group <rg>
   ```

<a id="monitor-diagnostic-settings-list"></a>
2. az monitor diagnostic-settings list  
   Description: Elenca le impostazioni diagnostiche per una risorsa.  
   ```
   az monitor diagnostic-settings list --resource <resource-id>
   ```
