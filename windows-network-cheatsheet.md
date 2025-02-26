# Windows Network Troubleshooting Cheatsheet: Essential Commands for DevOps

## Introduction
This cheatsheet provides essential Windows networking commands for troubleshooting network issues, verifying connectivity, and diagnosing common problems.

## Table of Contents
1. ipconfig /all
2. ping
3. tracert
4. nslookup
5. netstat -an
6. route print
7. arp -a
8. Test-NetConnection
9. Get-NetAdapter
10. netsh interface ipv4 show config

1. **ipconfig /all**  
   Displays full TCP/IP configuration.  
   ```
   ipconfig /all
   ```

2. **ping**  
   Tests connectivity to a host.  
   ```
   ping www.example.com
   ```

3. **tracert**  
   Traces the route packets take to a destination.  
   ```
   tracert www.example.com
   ```

4. **nslookup**  
   Queries DNS to obtain domain IP addresses.  
   ```
   nslookup www.example.com
   ```

5. **netstat -an**  
   Displays active network connections and listening ports.  
   ```
   netstat -an
   ```

6. **route print**  
   Shows the IP routing table.  
   ```
   route print
   ```

7. **arp -a**  
   Displays the ARP table, useful for resolving MAC addresses.  
   ```
   arp -a
   ```

8. **Test-NetConnection**  
   PowerShell cmdlet to test connectivity and ports.  
   ```
   Test-NetConnection -ComputerName www.example.com -Port 80
   ```

9. **Get-NetAdapter**  
   Lists network adapters and their statuses.  
   ```
   Get-NetAdapter
   ```

10. **netsh interface ipv4 show config**  
    Shows IPv4 configuration for all interfaces.  
    ```
    netsh interface ipv4 show config
    ```
