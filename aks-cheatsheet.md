# AKS operations — field notes

Azure CLI examples; replace `<rg>`, `<aks>`, `<pool>`, `<region>`, and `<version>`. Validate cluster mode, RBAC, maintenance windows, PDBs, and current regional support before changes.

## Context and inventory

```powershell
az account set --subscription <subscription-id>
az aks list -o table
az aks show -g <rg> -n <aks> --query "{version:kubernetesVersion,network:networkProfile.networkPlugin,identity:securityProfile.workloadIdentity.enabled}" -o json
az aks get-credentials -g <rg> -n <aks> --overwrite-existing
kubectl config current-context
kubectl get nodes -o wide
```

Azure RBAC for ARM and Kubernetes API authorization are separate boundaries; confirm both.

## Version lifecycle and upgrades

```powershell
az aks get-versions --location <region> -o table
az aks get-upgrades -g <rg> -n <aks> -o table
az aks nodepool list -g <rg> --cluster-name <aks> -o table
az aks upgrade -g <rg> -n <aks> --kubernetes-version <version>
```

Check [AKS supported versions](https://learn.microsoft.com/azure/aks/supported-kubernetes-versions), API removals, add-on compatibility, maintenance configuration, surge capacity, quota and rollback/recovery plan. Inspect PDBs and disruption budgets before upgrades; test in non-production first.

## Node pools and autoscaling

```powershell
az aks nodepool list -g <rg> --cluster-name <aks> -o table
az aks nodepool show -g <rg> --cluster-name <aks> -n <pool>
az aks nodepool update -g <rg> --cluster-name <aks> -n <pool> --enable-cluster-autoscaler --min-count 2 --max-count 6
kubectl get hpa -A
kubectl get pdb -A
kubectl describe nodes
```

Cluster Autoscaler scales nodes; HPA/KEDA scales workloads. Do not change AKS-managed VMSS autoscale settings directly. Review system/user pool separation, zones, taints, capacity, scheduling constraints and node image upgrades.

## Microsoft Entra Workload ID

```powershell
az aks show -g <rg> -n <aks> --query "{oidc:oidcIssuerProfile.issuerUrl,workloadIdentity:securityProfile.workloadIdentity.enabled}"
az aks update -g <rg> -n <aks> --enable-oidc-issuer --enable-workload-identity
```

Use a Kubernetes service account, federated identity credential and scoped Azure RBAC assignment; avoid long-lived client secrets. Check issuer, subject (`system:serviceaccount:<namespace>:<serviceaccount>`), audience (`api://AzureADTokenExchange`), pod label `azure.workload.identity/use: "true"` and service-account annotation `azure.workload.identity/client-id`.

## Networking

```powershell
az aks show -g <rg> -n <aks> --query networkProfile -o json
kubectl get svc,ingress -A
kubectl get networkpolicy -A
kubectl get endpointslices -A
```

Confirm CNI mode, pod/service CIDRs, DNS, egress/NAT, private API access, ingress controller and network-policy enforcement. NetworkPolicy objects require a compatible enforcement engine.

## Troubleshooting

```powershell
kubectl get pods -A -o wide
kubectl get events -A --sort-by=.lastTimestamp
kubectl describe pod <pod> -n <namespace>
kubectl logs <pod> -n <namespace> --previous
kubectl top nodes
kubectl top pods -A
az aks show -g <rg> -n <aks> --query provisioningState -o tsv
```

Check scheduling failures, image pulls, DNS, identity token exchange, quotas, PDBs and node pressure. `kubectl top` requires Metrics Server. Use `kubectl cordon/drain` only with explicit disruption planning; avoid manual mutation of AKS-managed node resources.

## References

- [AKS CLI](https://learn.microsoft.com/cli/azure/aks)
- [Cluster Autoscaler](https://learn.microsoft.com/azure/aks/cluster-autoscaler)
- [Workload identity](https://learn.microsoft.com/azure/aks/workload-identity-deploy-cluster)
- [AKS troubleshooting](https://learn.microsoft.com/troubleshoot/azure/azure-kubernetes/welcome-azure-kubernetes)
