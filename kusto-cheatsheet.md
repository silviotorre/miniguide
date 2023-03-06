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
