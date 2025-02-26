# Kusto Query Cheatsheet: Analyze Your Data with KQL

## Table of Contents
- [Kusto Query Cheatsheet: Analyze Your Data with KQL](#kusto-query-cheatsheet-analyze-your-data-with-kql)
  - [Table of Contents](#table-of-contents)
    - [1. Basic Count](#1-basic-count)
    - [2. Filter by Date Range](#2-filter-by-date-range)
    - [3. Summarize with Grouping](#3-summarize-with-grouping)
    - [4. Project Specific Columns](#4-project-specific-columns)
    - [5. Top Records](#5-top-records)
    - [6. Distinct Values](#6-distinct-values)
    - [7. Using Bin Operator](#7-using-bin-operator)
    - [8. Join Two Tables](#8-join-two-tables)
    - [9. Parse Text Values](#9-parse-text-values)
    - [10. Render Chart](#10-render-chart)
  - [Azure Traces Examples](#azure-traces-examples)
    - [1. Count Total Traces](#1-count-total-traces)
    - [2. Filter Traces: Severity Error](#2-filter-traces-severity-error)
    - [3. Summarize Traces by Time Bin](#3-summarize-traces-by-time-bin)
    - [4. Top 10 Slow Traces](#4-top-10-slow-traces)
    - [5. Filter by Operation Name](#5-filter-by-operation-name)
    - [6. Join Traces with Requests](#6-join-traces-with-requests)
    - [7. Parse Custom Field from Trace](#7-parse-custom-field-from-trace)
    - [8. Summarize Duration per Operation](#8-summarize-duration-per-operation)
    - [9. Render Traces Trend](#9-render-traces-trend)
    - [10. Detect Anomalies in Traces](#10-detect-anomalies-in-traces)
  - [Troubleshooting Examples on Azure](#troubleshooting-examples-on-azure)
    - [1. Retrieve Failed Logins](#1-retrieve-failed-logins)
    - [2. Count Exceptions in AppInsights](#2-count-exceptions-in-appinsights)
    - [3. Filter Activity Logs for Errors](#3-filter-activity-logs-for-errors)
    - [4. Summarize Resource Failures](#4-summarize-resource-failures)
    - [5. Identify Slow Response Times](#5-identify-slow-response-times)
    - [6. Filter Network Drop Events](#6-filter-network-drop-events)
    - [7. Join Logs for Correlation](#7-join-logs-for-correlation)
    - [8. Parse Exception Messages](#8-parse-exception-messages)
    - [9. Render Diagnostic Trends](#9-render-diagnostic-trends)
    - [10. Detect Repeated Failures](#10-detect-repeated-failures)

---

<a id="basic-count"></a>
### 1. Basic Count  
**Query:** Conta il numero totale di record in una tabella.  
```
TableName
| count
```

<a id="filter-date-range"></a>
### 2. Filter by Date Range  
**Query:** Filtra i record in base a un intervallo di tempo specifico.  
```
TableName
| where TimeGenerated between (datetime(2023-01-01) .. datetime(2023-01-31))
```

<a id="summarize-grouping"></a>
### 3. Summarize with Grouping  
**Query:** Raggruppa i dati per un campo e conta i record per ciascun gruppo.  
```
TableName
| summarize Count = count() by Category
```

<a id="project-columns"></a>
### 4. Project Specific Columns  
**Query:** Seleziona solamente le colonne di interesse.  
```
TableName
| project TimeGenerated, Category, Value
```

<a id="top-records"></a>
### 5. Top Records  
**Query:** Restituisce i primi 10 record in base ad un criterio d’ordinamento.  
```
TableName
| top 10 by Value desc
```

<a id="distinct-values"></a>
### 6. Distinct Values  
**Query:** Ottieni i valori distinti per un campo specifico.  
```
TableName
| distinct Category
```

<a id="bin-operator"></a>
### 7. Using Bin Operator  
**Query:** Raggruppa i record in intervalli di tempo (binning).  
```
TableName
| summarize Count = count() by bin(TimeGenerated, 1h)
```

<a id="join-tables"></a>
### 8. Join Two Tables  
**Query:** Unisci due tabelle sulla base di un campo comune.  
```
TableA
| join kind=inner (TableB) on CommonField
```

<a id="parse-text"></a>
### 9. Parse Text Values  
**Query:** Estrai informazioni da una stringa usando parse.  
```
TableName
| parse LogText with "User:" UserName " Action:" ActionType
```

<a id="render-chart"></a>
### 10. Render Chart  
**Query:** Visualizza i risultati in un grafico a barre.  
```
TableName
| summarize Count = count() by Category
| render barchart
```

---

<a id="azure-traces-examples"></a>
## Azure Traces Examples

<a id="trace-count"></a>
### 1. Count Total Traces  
**Query:** Conta il numero totale di tracce registrate.  
```
Traces
| count
```

<a id="trace-error"></a>
### 2. Filter Traces: Severity Error  
**Query:** Filtra le tracce con livello di gravità "Error".  
```
Traces
| where SeverityLevel == "Error"
```

<a id="trace-summarize"></a>
### 3. Summarize Traces by Time Bin  
**Query:** Raggruppa le tracce per intervallo di tempo.  
```
Traces
| summarize TraceCount = count() by bin(TimeGenerated, 30m)
```

<a id="trace-top-slow"></a>
### 4. Top 10 Slow Traces  
**Query:** Mostra le 10 tracce con tempi di risposta maggiori.  
```
Traces
| top 10 by Duration desc
```

<a id="trace-operation"></a>
### 5. Filter by Operation Name  
**Query:** Filtra le tracce per un nome di operazione specifico.  
```
Traces
| where OperationName == "MyOperation"
```

<a id="trace-join"></a>
### 6. Join Traces with Requests  
**Query:** Unisci le tracce con la tabella delle richieste per correlare eventi.  
```
Traces
| join kind=inner (Requests) on OperationId
```

<a id="trace-parse"></a>
### 7. Parse Custom Field from Trace  
**Query:** Estrai un campo personalizzato dal messaggio di traccia.  
```
Traces
| parse Message with "UserID:" UserId " " *
```

<a id="trace-duration"></a>
### 8. Summarize Duration per Operation  
**Query:** Calcola la durata totale per ogni operazione.  
```
Traces
| summarize TotalDuration = sum(Duration) by OperationName
```

<a id="trace-render"></a>
### 9. Render Traces Trend  
**Query:** Visualizza un grafico a linee dei volumi di tracce nel tempo.  
```
Traces
| summarize Count = count() by bin(TimeGenerated, 1h)
| render timechart
```

<a id="trace-anomalies"></a>
### 10. Detect Anomalies in Traces  
**Query:** Individua valori anomali nel numero di tracce per intervallo.  
```
Traces
| summarize Count = count() by bin(TimeGenerated, 15m)
| where Count > avg(Count) * 1.5
```

---

<a id="troubleshooting-examples"></a>
## Troubleshooting Examples on Azure

<a id="troubleshoot-failed-logins"></a>
### 1. Retrieve Failed Logins  
**Query:** Filtra i log per individuare tentativi di login falliti.  
```
SigninLogs
| where ResultType != "0"
| project TimeGenerated, UserPrincipalName, IPAddress, ResultDescription
```

<a id="troubleshoot-exceptions"></a>
### 2. Count Exceptions in AppInsights  
**Query:** Conta il numero di eccezioni raccolte in Application Insights.  
```
exceptions
| summarize ExceptionCount = count() by bin(TimeGenerated, 1h)
```

<a id="troubleshoot-activity"></a>
### 3. Filter Activity Logs for Errors  
**Query:** Filtra i log delle attività per errori critici.  
```
AzureActivity
| where Level == "Error"
| project TimeGenerated, OperationName, ActivityStatus, Caller
```

<a id="troubleshoot-resource"></a>
### 4. Summarize Resource Failures  
**Query:** Conta il numero di errori per risorsa.  
```
AzureActivity
| where ActivityStatus == "Failed"
| summarize Failures = count() by ResourceId
```

<a id="troubleshoot-slow"></a>
### 5. Identify Slow Response Times  
**Query:** Identifica le richieste lente da Application Insights.  
```
requests
| where Duration > 3000
| project TimeGenerated, Name, Duration, Success
```

<a id="troubleshoot-network"></a>
### 6. Filter Network Drop Events  
**Query:** Filtra eventi di perdita pacchetti nelle reti.  
```
NetworkMonitoring
| where Message contains "Packet Drop"
```

<a id="troubleshoot-join"></a>
### 7. Join Logs for Correlation  
**Query:** Unisci i log delle richieste e delle tracce per correlare errori.  
```
requests
| join kind=inner (Traces) on OperationId
| project TimeGenerated, Name, Message, Duration
```

<a id="troubleshoot-parse"></a>
### 8. Parse Exception Messages  
**Query:** Estrai il messaggio di errore da eccezioni complesse.  
```
exceptions
| parse Details with * "Exception:" ExceptionMsg ";"
| project TimeGenerated, ExceptionMsg
```

<a id="troubleshoot-render"></a>
### 9. Render Diagnostic Trends  
**Query:** Visualizza un grafico dei trend di errori nel tempo.  
```
AzureActivity
| where ActivityStatus == "Failed"
| summarize Failures = count() by bin(TimeGenerated, 1h)
| render timechart
```

<a id="troubleshoot-repeated"></a>
### 10. Detect Repeated Failures  
**Query:** Individua risorse con fallimenti ripetuti in un intervallo di tempo.  
```
AzureActivity
| where ActivityStatus == "Failed"
| summarize FailureCount = count() by ResourceId, bin(TimeGenerated, 1h)
| where FailureCount > 5
```
