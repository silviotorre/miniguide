<#
.SYNOPSIS
  Stop a service on a remote Windows machine using PowerShell.
.DESCRIPTION
  Uses Invoke-Command to stop a specified service on a remote computer.
.PARAMETER ServiceName
  The name of the service to stop.
.PARAMETER ComputerName
  The name of the remote computer.
.EXAMPLE
  .\stop-remote-service.ps1 -ServiceName "wuauserv" -ComputerName "RemotePC"
#>
param(
    [Parameter(Mandatory)]
    [string]$ServiceName,
    [Parameter(Mandatory)]
    [string]$ComputerName
)
Invoke-Command -ComputerName $ComputerName -ScriptBlock { param($svc) Stop-Service -Name $svc -Force } -ArgumentList $ServiceName
