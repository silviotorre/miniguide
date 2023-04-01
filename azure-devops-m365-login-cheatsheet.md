# Azure DevOps & Microsoft 365 Login Cheatsheet: Terminal Authentication

## Introduction
This cheatsheet provides essential commands for logging into Azure DevOps and Microsoft 365 from the terminal, along with troubleshooting steps. It is designed for DevOps professionals to manage and troubleshoot authentication.

## Table of Contents
1. [Azure DevOps Login](#azure-devops-login)
2. [Set Azure DevOps Organization](#set-azure-devops-org)
3. [Verify Azure DevOps Settings](#verify-azure-devops)
4. [Microsoft 365 Login via CLI](#m365-login)
5. [Microsoft 365 Logout](#m365-logout)
6. [Azure DevOps Logout](#azure-devops-logout)
7. [Troubleshoot DevOps Login](#troubleshoot-devops-login)
8. [Troubleshoot M365 Login](#troubleshoot-m365-login)
9. [Use PAT for DevOps Login](#pat-devops)
10. [View Account Info](#view-account-info)

<a id="azure-devops-login"></a>
### 1. Azure DevOps Login  
**Command:** Login using a personal access token (PAT).  
```
az devops login --token <PAT>
```

<a id="set-azure-devops-org"></a>
### 2. Set Azure DevOps Organization  
**Command:** Set the default Azure DevOps organization.  
```
az devops configure --defaults organization=https://dev.azure.com/<orgName>
```

<a id="verify-azure-devops"></a>
### 3. Verify Azure DevOps Settings  
**Command:** Verify current configuration settings.  
```
az devops configure --list
```

<a id="m365-login"></a>
### 4. Microsoft 365 Login via CLI  
**Command:** Login to Microsoft 365 using the CLI.  
```
m365 login
```

<a id="m365-logout"></a>
### 5. Microsoft 365 Logout  
**Command:** Logout from Microsoft 365.  
```
m365 logout
```

<a id="azure-devops-logout"></a>
### 6. Azure DevOps Logout  
**Command:** Logout from Azure DevOps (clear token).  
```
az devops logout
```

<a id="troubleshoot-devops-login"></a>
### 7. Troubleshoot DevOps Login  
**Example:** Retry login with verbose output for troubleshooting.  
```
az devops login --token <PAT> --debug
```

<a id="troubleshoot-m365-login"></a>
### 8. Troubleshoot M365 Login  
**Example:** Show detailed error during m365 login.  
```
m365 login --debug
```

<a id="pat-devops"></a>
### 9. Use PAT for DevOps Login  
**Example:** Store PAT in an environment variable and login.  
```
export AZDO_PAT=<PAT>
az devops login --token $AZDO_PAT
```

<a id="view-account-info"></a>
### 10. View Account Info  
**Command:** Display account information after login.  
```
az account show
```
