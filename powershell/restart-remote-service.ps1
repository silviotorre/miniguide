<#
.SYNOPSIS
  Restart a service on a remote Windows machine using PowerShell.
.DESCRIPTION
  Uses Restart-Service to restart a specified service on a remote computer.
.PARAMETER ServiceName
  The name of the service to restart.
.PARAMETER ComputerName
  The name of the remote computer.
.EXAMPLE
  .\restart-remote-service.ps1 -ServiceName "wuauserv" -ComputerName "RemotePC"
#>
param(
    [Parameter(Mandatory)]
    [string]$ServiceName,
    [Parameter(Mandatory)]
    [string]$ComputerName
)
Restart-Service -Name $ServiceName -ComputerName $ComputerName -Force
