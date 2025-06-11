<#
.SYNOPSIS
  Restart a remote Windows computer using PowerShell.
.DESCRIPTION
  Uses Restart-Computer to restart a specified remote computer.
.PARAMETER ComputerName
  The name of the remote computer.
.EXAMPLE
  .\restart-remote-computer.ps1 -ComputerName "RemotePC"
#>
param(
    [Parameter(Mandatory)]
    [string]$ComputerName
)
Restart-Computer -ComputerName $ComputerName -Force
