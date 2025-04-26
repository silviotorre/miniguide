# ad-ssh-add-key-to-ad.ps1
<#+
.SYNOPSIS
    Adds SSH public key to Azure AD user account.
.DESCRIPTION
    This script adds an SSH public key to an Azure AD user account using Azure CLI.
.PARAMETER UserPrincipalName
    The user principal name (UPN) of the Azure AD user.
.PARAMETER PublicKeyFile
    The path to the SSH public key file.
.EXAMPLE
    .\ad-ssh-add-key-to-ad.ps1 -UserPrincipalName user@domain.com -PublicKeyFile ~/.ssh/id_rsa.pub
.NOTES
    Dependencies: Azure CLI (az)
#>
param(
    [Parameter(Mandatory)]
    [string]$UserPrincipalName,
    [Parameter(Mandatory)]
    [string]$PublicKeyFile
)

$pubKey = Get-Content $PublicKeyFile -Raw
az ad user update --id $UserPrincipalName --set sshPublicKey="$pubKey"
