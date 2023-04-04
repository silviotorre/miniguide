# AD SSH & Certificate-Based Login Cheatsheet: Secure and Effortless Authentication

## Introduction
This cheatsheet provides essential commands for configuring SSH integration with Active Directory and performing certificate-based logins, making authentication seamless for DevOps professionals.

## Table of Contents
- [AD SSH \& Certificate-Based Login Cheatsheet: Secure and Effortless Authentication](#ad-ssh--certificate-based-login-cheatsheet-secure-and-effortless-authentication)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Generate SSH Key Pair](#1-generate-ssh-key-pair)
    - [2. Add SSH Key to AD Account](#2-add-ssh-key-to-ad-account)
    - [3. Configure SSH for AD Authentication](#3-configure-ssh-for-ad-authentication)
    - [4. Test SSH Connection](#4-test-ssh-connection)
    - [5. Login via SSH with Certificate](#5-login-via-ssh-with-certificate)
    - [6. Convert PEM to PPK (Windows)](#6-convert-pem-to-ppk-windows)
    - [7. List SSH Keys in AD](#7-list-ssh-keys-in-ad)
    - [8. Remove SSH Key from AD](#8-remove-ssh-key-from-ad)
    - [9. Troubleshoot SSH Connection](#9-troubleshoot-ssh-connection)
    - [10. Automate SSH Login with Cert](#10-automate-ssh-login-with-cert)

<a id="generate-ssh-key-pair"></a>
### 1. Generate SSH Key Pair  
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

<a id="add-ssh-key-to-ad"></a>
### 2. Add SSH Key to AD Account  
*Example using Azure CLI for AD extension:*  
```
az ad user update --id <userPrincipalName> --set sshPublicKey="$(cat ~/.ssh/id_rsa.pub)"
```

<a id="configure-ssh-ad"></a>
### 3. Configure SSH for AD Authentication  
*Edit your SSH config file:*  
```
Host myadhost
    HostName <hostname>
    User <username>
    IdentityFile ~/.ssh/id_rsa
```

<a id="test-ssh-connection"></a>
### 4. Test SSH Connection  
```
ssh myadhost
```

<a id="login-via-ssh-cert"></a>
### 5. Login via SSH with Certificate  
```
ssh -i /path/to/cert.pem <username>@<hostname>
```

<a id="convert-pem-to-ppk"></a>
### 6. Convert PEM to PPK (Windows)
*Using PuTTYgen:*  
```
puttygen cert.pem -o cert.ppk
```

<a id="list-ssh-keys-ad"></a>
### 7. List SSH Keys in AD  
*Example (requires custom scripting or additional modules):*  
```
az ad user show --id <userPrincipalName> --query sshPublicKey
```

<a id="remove-ssh-key-ad"></a>
### 8. Remove SSH Key from AD  
```
az ad user update --id <userPrincipalName> --remove sshPublicKey
```

<a id="troubleshoot-ssh"></a>
### 9. Troubleshoot SSH Connection  
```
ssh -vvv myadhost
```

<a id="automate-ssh-login"></a>
### 10. Automate SSH Login with Cert  
*Example using ssh-agent:*  
```
eval "$(ssh-agent -s)"
ssh-add /path/to/cert.pem
ssh myadhost
```
