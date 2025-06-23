# kubectl-get-pods.ps1
<#+
.SYNOPSIS
    List all pods in the current namespace.
.DESCRIPTION
    This script lists all pods in the current Kubernetes namespace using kubectl.
.EXAMPLE
    .\kubectl-get-pods.ps1
.NOTES
    Dependencies: kubectl
#>

kubectl get pods
