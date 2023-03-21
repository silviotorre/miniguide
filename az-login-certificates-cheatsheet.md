# Azure Login & Certificates Cheatsheet: Authentication and Troubleshooting

## Introduction
This cheatsheet provides Azure CLI examples for logging into Azure, including interactive login, service principal login using certificates, and various troubleshooting examples.

## Table of Contents
- [Azure Login \& Certificates Cheatsheet: Authentication and Troubleshooting](#azure-login--certificates-cheatsheet-authentication-and-troubleshooting)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Interactive Login](#1-interactive-login)
    - [2. Login with Service Principal \& Password](#2-login-with-service-principal--password)
    - [3. Login with Service Principal \& Certificate](#3-login-with-service-principal--certificate)
    - [4. Login Using Device Code](#4-login-using-device-code)
    - [5. List Current Account](#5-list-current-account)
    - [6. Show Login Information](#6-show-login-information)
    - [7. Logout from Azure](#7-logout-from-azure)
    - [8. Troubleshoot Login Issues](#8-troubleshoot-login-issues)
    - [9. Validate Certificate Authentication](#9-validate-certificate-authentication)
    - [10. Use Environment Variables for Login](#10-use-environment-variables-for-login)

<a id="interactive-login"></a>
### 1. Interactive Login  
```
az login
```

<a id="login-sp-password"></a>
### 2. Login with Service Principal & Password  
```
az login --service-principal --username <appId> --password <password> --tenant <tenantId>
```

<a id="login-sp-certificate"></a>
### 3. Login with Service Principal & Certificate  
```
az login --service-principal --username <appId> --password <path/to/certificate.pem> --tenant <tenantId>
```

<a id="login-device-code"></a>
### 4. Login Using Device Code  
```
az login --use-device-code
```

<a id="list-current-account"></a>
### 5. List Current Account  
```
az account show
```

<a id="show-login-info"></a>
### 6. Show Login Information  
```
az ad signed-in-user show
```

<a id="logout-azure"></a>
### 7. Logout from Azure  
```
az logout
```

<a id="troubleshoot-login"></a>
### 8. Troubleshoot Login Issues  
Example: Retry login with verbose output.
```
az login --debug
```

<a id="validate-cert-auth"></a>
### 9. Validate Certificate Authentication  
Example: Check certificate details used in login.
```
az ad sp credential list --id <appId>
```

<a id="env-login"></a>
### 10. Use Environment Variables for Login  
Example: Export variables then login.
```
export AZURE_CLIENT_ID=<appId>
export AZURE_TENANT_ID=<tenantId>
export AZURE_CLIENT_SECRET=<secret>
az login --service-principal
```
