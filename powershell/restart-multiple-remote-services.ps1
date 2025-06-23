<#
.SYNOPSIS
  Restart multiple services on a remote Windows machine.
.DESCRIPTION
  Uses Invoke-Command to restart multiple services on a remote computer.
.PARAMETER ServiceNames
  An array of service names to restart.
.PARAMETER ComputerName
  The name of the remote computer.
.EXAMPLE
  .\restart-multiple-remote-services.ps1 -ServiceNames "Service1","Service2" -ComputerName "RemotePC"
#>
param(
    [Parameter(Mandatory)]
    [string[]]$ServiceNames,
    [Parameter(Mandatory)]
    [string]$ComputerName
)
Invoke-Command -ComputerName $ComputerName -ScriptBlock {
    param($svcs)
    $svcs | ForEach-Object { Restart-Service -Name $_ -Force }
} -ArgumentList $ServiceNames
