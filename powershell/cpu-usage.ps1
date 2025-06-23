# cpu-usage.ps1
<#+
.SYNOPSIS
    Monitor CPU usage (Windows)
.DESCRIPTION
    This script shows total processor time using PowerShell.
.EXAMPLE
    .\cpu-usage.ps1
#>

Get-Counter '\Processor(_Total)\% Processor Time'
