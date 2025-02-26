# System Troubleshooting Cheatsheet: Essential Commands for DevOps

## Introduction
This cheatsheet offers a set of commonly used system troubleshooting commands. It covers commands for monitoring system performance, checking resource usage, and diagnosing issues on both Linux and Windows systems.

## Table of Contents
1. [Check System Uptime](#check-system-uptime)
2. [Monitor CPU Usage](#monitor-cpu-usage)
3. [Memory Usage](#memory-usage)
4. [Disk Space Usage](#disk-space-usage)
5. [Network Statistics](#network-statistics)
6. [List Processes](#list-processes)
7. [Kill Process](#kill-process)
8. [Check System Logs](#check-system-logs)
9. [Windows Event Viewer Command](#windows-event-viewer)
10. [System Resource Monitor](#system-resource-monitor)

<a id="check-system-uptime"></a>
### 1. Check System Uptime  
*Linux:*  
```
uptime
```
*Windows (PowerShell):*  
```
Get-CimInstance Win32_OperatingSystem | Select-Object LastBootUpTime
```

<a id="monitor-cpu-usage"></a>
### 2. Monitor CPU Usage  
*Linux:*  
```
top
```
*Windows (PowerShell):*  
```
Get-Counter '\Processor(_Total)\% Processor Time'
```

<a id="memory-usage"></a>
### 3. Memory Usage  
*Linux:*  
```
free -m
```
*Windows (PowerShell):*  
```
Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory
```

<a id="disk-space-usage"></a>
### 4. Disk Space Usage  
*Linux:*  
```
df -h
```
*Windows (PowerShell):*  
```
Get-PSDrive -PSProvider FileSystem
```

<a id="network-statistics"></a>
### 5. Network Statistics  
*Linux:*  
```
netstat -tulpn
```
*Windows (PowerShell):*  
```
Get-NetTCPConnection
```

<a id="list-processes"></a>
### 6. List Processes  
*Linux:*  
```
ps aux
```
*Windows (PowerShell):*  
```
Get-Process
```

<a id="kill-process"></a>
### 7. Kill Process  
*Linux:*  
```
kill -9 <pid>
```
*Windows (PowerShell):*  
```
Stop-Process -Id <pid> -Force
```

<a id="check-system-logs"></a>
### 8. Check System Logs  
*Linux:*  
```
sudo tail -f /var/log/syslog
```
*Windows:*  
Run "Event Viewer" or use `Get-EventLog`.

<a id="windows-event-viewer"></a>
### 9. Windows Event Viewer Command  
```
wevtutil qe System /c:10 /f:text
```

<a id="system-resource-monitor"></a>
### 10. System Resource Monitor  
*Linux:*  
```
htop
```
*Windows (PowerShell):*  
```
Get-Counter -Counter "\Memory\Available MBytes"
```
