# Windows Remote Restart Cheatsheet

## Introduction
This document provides over 10 examples for restarting remote Windows services and systems for troubleshooting and resource management.

## Examples

1. Restart a service remotely using PowerShell:
   > Restart-Service -Name "ServiceName" -ComputerName "RemotePC" -Force

2. Stop a service remotely:
   > Invoke-Command -ComputerName "RemotePC" -ScriptBlock { Stop-Service -Name "ServiceName" -Force }

3. Restart a remote computer:
   > Restart-Computer -ComputerName "RemotePC" -Force

4. Using sc.exe to stop a remote service:
   > sc \\RemotePC stop "ServiceName"

5. Using sc.exe to start a remote service:
   > sc \\RemotePC start "ServiceName"

6. Stop a service with WMIC:
   > wmic /node:"RemotePC" service where "name='ServiceName'" call stopservice

7. Start a service with WMIC:
   > wmic /node:"RemotePC" service where "name='ServiceName'" call startservice

8. Using Invoke-Command for a complete restart sequence:
   > Invoke-Command -ComputerName "RemotePC" -ScriptBlock { Restart-Service -Name "ServiceName" -Force }

9. Restart multiple services on a remote machine:
   > Invoke-Command -ComputerName "RemotePC" -ScriptBlock { "Service1","Service2" | ForEach-Object { Restart-Service -Name $_ -Force } }

10. Using PsExec for remote service restart (if available):
    > psexec \\RemotePC net stop "ServiceName" && psexec \\RemotePC net start "ServiceName"
