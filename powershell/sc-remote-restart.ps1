# Restart a remote service using sc.exe
# Usage: .\sc-remote-restart.ps1 -ServiceName "ServiceName" -ComputerName "RemotePC"
param(
    [Parameter(Mandatory)]
    [string]$ServiceName,
    [Parameter(Mandatory)]
    [string]$ComputerName
)
sc \\$ComputerName stop "$ServiceName"
sc \\$ComputerName start "$ServiceName"
