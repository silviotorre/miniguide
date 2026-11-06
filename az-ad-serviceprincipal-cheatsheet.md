# Microsoft Entra ID — Service Principals and Workload Identity

Azure CLI field notes. `az ad` remains the CLI command group; Azure AD is now Microsoft Entra ID.

## Identity selection

| Workload | Preferred identity |
| --- | --- |
| Azure-hosted service | System- or user-assigned managed identity |
| External CI/CD | Workload identity federation (OIDC), no stored client secret |
| Legacy/non-federated automation | Service principal with certificate; rotate credentials |

An app registration defines the application; its service principal is the tenant-local identity. Azure RBAC assignments authorize access to Azure resources. Microsoft Entra directory roles are separate.

## Inspect

```powershell
az account show --query "{tenant:tenantId,subscription:id}" -o json
az ad sp list --display-name "<name>" --query "[].{appId:appId,objectId:id}" -o table
az ad sp show --id "<app-id>"
az role assignment list --assignee "<sp-object-id>" --all -o table
```

## Provision and scope

Prefer managed identity or OIDC federation. When a service principal is required:

```powershell
az ad sp create-for-rbac --name "<name>" --skip-assignment
az role assignment create --assignee "<app-id>" --role Reader --scope "/subscriptions/<subscription-id>/resourceGroups/<rg>"
```

**Note:** `create-for-rbac` can emit a credential. Do not log or commit its output. Assign the narrowest role at the narrowest scope; avoid subscription-wide Contributor by default.

## Federation / OIDC

Configure a federated identity credential on the app registration or user-assigned managed identity. Match **issuer**, **subject**, and **audience** to the trusted workload. For GitHub Actions, grant `id-token: write` and use `azure/login@v2` with client, tenant and subscription IDs. Restrict the subject to the intended branch or environment; protect deployment environments separately.

## Troubleshooting

- **401 / invalid token:** issuer, audience, tenant, subject, token lifetime.
- **403 / AuthorizationFailed:** inspect Azure RBAC scope, principal object ID, assignment propagation.
- **No token:** check OIDC permissions, trust configuration, managed identity attachment.
- **Credential expiry:** replace static secrets with federation or managed identity where supported.

## References

- [Azure CLI — service principals](https://learn.microsoft.com/en-us/cli/azure/ad/sp)
- [GitHub Actions — Azure OIDC](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure-openid-connect)
