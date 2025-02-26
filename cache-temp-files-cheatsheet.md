# Cache and Temporary Files Management Cheatsheet

## Introduction
This document provides over 10 command examples for cleaning caches and temporary files to improve system efficiency on work PCs.

## Examples

1. Clear Windows Temp folder via Command Prompt:
   > del /q/f/s %TEMP%\*

2. Remove temporary files using PowerShell:
   > Get-ChildItem -Path $env:TEMP -Recurse | Remove-Item -Force -Recurse

3. Clean Windows prefetch folder (run as administrator):
   > del /q/f/s C:\Windows\Prefetch\*

4. Clear DNS cache on Windows:
   > ipconfig /flushdns

5. Clear browser cache in Edge using PowerShell:
   > Remove-Item "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache\*" -Recurse -Force

6. Delete Windows Update cache:
   > net stop wuauserv && del /q/f/s C:\Windows\SoftwareDistribution\Download\* && net start wuauserv

7. Clean Linux temporary files:
   > sudo rm -rf /tmp/*

8. Clear apt cache on Ubuntu:
   > sudo apt-get clean

9. Remove thumbnail cache in Windows:
   > del /f /s /q %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db

10. Clean system recycle bin using PowerShell:
    > Clear-RecycleBin -Force
