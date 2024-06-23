# network-stats.ps1
<#+
.SYNOPSIS
    Show network statistics (Windows)
.DESCRIPTION
    This script shows TCP connections using PowerShell.
.EXAMPLE
    .\network-stats.ps1
#>

Get-NetTCPConnection
