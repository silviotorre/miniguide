<#
.SYNOPSIS
  Restart a service on a remote Windows machine using Invoke-Command.
.DESCRIPTION
  Uses Invoke-Command to restart a specified service on a remote computer.
.PARAMETER ServiceName
  The name of the service to restart.
.PARAMETER ComputerName
  The name of the remote computer.
.EXAMPLE
  .\invoke-restart-remote-service.ps1 -ServiceName "wuauserv" -ComputerName "RemotePC"
#>
param(
    [Parameter(Mandatory)]
    [string]$ServiceName,
    [Parameter(Mandatory)]
    [string]$ComputerName
)
Invoke-Command -ComputerName $ComputerName -ScriptBlock { param($svc) Restart-Service -Name $svc -Force } -ArgumentList $ServiceName
