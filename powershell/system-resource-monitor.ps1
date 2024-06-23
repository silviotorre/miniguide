# system-resource-monitor.ps1
<#+
.SYNOPSIS
    Monitor system resources (Windows)
.DESCRIPTION
    This script shows available memory in MB using PowerShell.
.EXAMPLE
    .\system-resource-monitor.ps1
#>

Get-Counter -Counter "\Memory\Available MBytes"
