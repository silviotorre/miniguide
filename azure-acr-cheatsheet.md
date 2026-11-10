# Azure Container Registry (ACR) / OCI Field Notes

Replace placeholders before execution. Use Microsoft Entra identity and least-privilege repository access; avoid enabling the registry admin account.

## Registry and authentication

```powershell
$acr = "<acr-name>"
$registry = az acr show --name $acr --query loginServer -o tsv
az login
az acr login --name $acr
az acr check-health --name $acr
```

For CI, prefer workload identity federation or managed identity over long-lived service principal secrets. Grant **Container Registry Repository Reader/Writer** for ABAC-enabled registries; **AcrPull/AcrPush** for non-ABAC registries. Scope access to required repositories.

## Images: build, inspect, promote

```powershell
az acr build --registry $acr --image app:1.0 .
az acr repository list --name $acr -o table
az acr repository show-tags --name $acr --repository app -o table
az acr manifest list-metadata --registry $acr --name app -o table
az acr import --name $acr --source "source.azurecr.io/app@sha256:<digest>" --image "app:1.0"
```

Prefer immutable digests for deployment/promotion; a mutable tag is not provenance. Verify publisher, build provenance, signatures and SBOM before promotion. See the dedicated supply-chain notes when available.

## OCI Helm charts

Helm 3.8+ supports OCI by default. Legacy `az acr helm` commands were retired in September 2025.

```powershell
az acr login --name $acr
helm package ./charts/app
helm push app-1.0.0.tgz "oci://$registry/helm"
helm pull "oci://$registry/helm/app" --version 1.0.0
```

Chart name/version come from `Chart.yaml`. OCI repository paths differ from legacy Helm index repositories.

## Troubleshooting

```powershell
az account show -o table
az acr show --name $acr --query "{loginServer:loginServer,publicNetworkAccess:publicNetworkAccess}" -o json
az acr check-health --name $acr --yes
docker manifest inspect "$registry/app:1.0"
```

- **401**: expired login token or invalid credentials; refresh `az acr login`.
- **403**: inspect RBAC/ABAC repository permissions and network restrictions.
- **Manifest unknown**: check repository, tag/digest, architecture and artifact type.
- **Network failure**: verify DNS, private endpoint, firewall and runner connectivity.
- `az acr login --expose-token` supports headless clients without a Docker daemon; handle the returned token as a secret.

References: [ACR authentication](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-authentication) · [Managed identity](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-authentication-managed-identity) · [Helm OCI](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-helm-repos)
