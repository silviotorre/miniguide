# kill-process.ps1
<#+
.SYNOPSIS
    Kill a process by PID (Windows)
.DESCRIPTION
    This script kills a process by its PID using PowerShell.
.PARAMETER PID
    The process ID to kill.
.EXAMPLE
    .\kill-process.ps1 -PID 1234
#>
param(
    [Parameter(Mandatory)]
    [int]$ProcessId
)

Stop-Process -Id $ProcessId -Force
