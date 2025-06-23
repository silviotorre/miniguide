# disk-usage.ps1
<#+
.SYNOPSIS
    Check disk space usage (Windows)
.DESCRIPTION
    This script shows disk usage for all file system drives using PowerShell.
.EXAMPLE
    .\disk-usage.ps1
#>

Get-PSDrive -PSProvider FileSystem
