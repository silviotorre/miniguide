<#
.SYNOPSIS
  Test network connectivity and port using PowerShell.
.DESCRIPTION
  Uses Test-NetConnection to check connectivity to a host and port.
.PARAMETER ComputerName
  The remote host to test.
.PARAMETER Port
  The port number to test.
.EXAMPLE
  .\test-netconnection.ps1 -ComputerName "www.example.com" -Port 80
#>
param(
    [Parameter(Mandatory)]
    [string]$ComputerName,
    [Parameter(Mandatory)]
    [int]$Port
)
Test-NetConnection -ComputerName $ComputerName -Port $Port
