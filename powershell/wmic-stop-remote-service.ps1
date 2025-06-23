# Stop a remote service using WMIC
# Usage: .\wmic-stop-remote-service.ps1 -ServiceName "ServiceName" -ComputerName "RemotePC"
param(
    [Parameter(Mandatory)]
    [string]$ServiceName,
    [Parameter(Mandatory)]
    [string]$ComputerName
)
wmic /node:"$ComputerName" service where "name='$ServiceName'" call stopservice
