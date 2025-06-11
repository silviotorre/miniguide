# Restart a remote service using PsExec
# Usage: .\psexec-remote-restart.ps1 -ServiceName "ServiceName" -ComputerName "RemotePC"
param(
    [Parameter(Mandatory)]
    [string]$ServiceName,
    [Parameter(Mandatory)]
    [string]$ComputerName
)
psexec \\$ComputerName net stop "$ServiceName"
psexec \\$ComputerName net start "$ServiceName"
