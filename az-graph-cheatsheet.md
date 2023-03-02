# Azure Graph Cheatsheet: Query Azure Resource Graph for Insights

## Table of Contents
### Section 1: Basic Queries
1. [az graph query](#graph-query)
2. [az graph query example](#graph-query-example)

<!-- Section 1 -->
<a id="graph-query"></a>
1. az graph query  
   Description: Esegue una query base sul Resource Graph.  
   ```
   az graph query -q "Resources | project name, type, location"
   ```

<a id="graph-query-example"></a>
2. az graph query example  
   Description: Esempio avanzato di query per filtrare risorse per tipo e location.  
   ```
   az graph query -q "Resources | where type =~ 'microsoft.compute/virtualmachines' | project name, location, properties.hardwareProfile.vmSize" --first 10
   ```
