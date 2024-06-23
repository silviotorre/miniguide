# check-system-logs.ps1
<#+
.SYNOPSIS
    Check system logs (Windows)
.DESCRIPTION
    This script retrieves the last 10 entries from the System event log using PowerShell.
.EXAMPLE
    .\check-system-logs.ps1
#>

Get-EventLog -LogName System -Newest 10
