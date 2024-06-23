# uptime.ps1
<#+
.SYNOPSIS
    Check system uptime (Windows)
.DESCRIPTION
    This script shows the last boot up time using PowerShell.
.EXAMPLE
    .\uptime.ps1
#>

Get-CimInstance Win32_OperatingSystem | Select-Object LastBootUpTime
