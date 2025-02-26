# PowerShell REST API Modules Cheatsheet: Key Cmdlets for API Interaction

## Introduction
This cheatsheet covers the principal PowerShell modules and cmdlets used to interact with REST APIs. It is intended for DevOps professionals managing integrations and troubleshooting API connections.

## Table of Contents
1. [Invoke-RestMethod](#invoke-restmethod)
2. [Invoke-WebRequest](#invoke-webrequest)
3. [ConvertTo-Json](#convertto-json)
4. [ConvertFrom-Json](#convertfrom-json)
5. [Get-Content (Reading API response)](#get-content)
6. [Set-Content (Logging API output)](#set-content)
7. [Register-PSRepository](#register-psrepository)
8. [Find-Module](#find-module)
9. [Install-Module](#install-module)
10. [Update-Module](#update-module)

<a id="invoke-restmethod"></a>
### 1. Invoke-RestMethod  
```
Invoke-RestMethod -Uri "https://api.example.com/data" -Method Get
```

<a id="invoke-webrequest"></a>
### 2. Invoke-WebRequest  
```
Invoke-WebRequest -Uri "https://api.example.com/data" -Method Get
```

<a id="convertto-json"></a>
### 3. ConvertTo-Json  
```
$object | ConvertTo-Json
```

<a id="convertfrom-json"></a>
### 4. ConvertFrom-Json  
```
(Get-Content response.json -Raw) | ConvertFrom-Json
```

<a id="get-content"></a>
### 5. Get-Content (Reading API response)  
```
$response = Invoke-RestMethod -Uri "https://api.example.com/data"
$response | Get-Content
```

<a id="set-content"></a>
### 6. Set-Content (Logging API output)  
```
$response | ConvertTo-Json | Set-Content -Path "C:\Logs\api-log.json"
```

<a id="register-psrepository"></a>
### 7. Register-PSRepository  
```
Register-PSRepository -Name "PSGallery" -SourceLocation "https://www.powershellgallery.com/api/v2/"
```

<a id="find-module"></a>
### 8. Find-Module  
```
Find-Module -Name Az
```

<a id="install-module"></a>
### 9. Install-Module  
```
Install-Module -Name Az -Scope CurrentUser
```

<a id="update-module"></a>
### 10. Update-Module  
```
Update-Module -Name Az
```
