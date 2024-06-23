# memory-usage.ps1
<#+
.SYNOPSIS
    Check memory usage (Windows)
.DESCRIPTION
    This script shows total and free physical memory using PowerShell.
.EXAMPLE
    .\memory-usage.ps1
#>

Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory
