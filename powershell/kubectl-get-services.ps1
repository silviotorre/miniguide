# kubectl-get-services.ps1
<#+
.SYNOPSIS
    List all services in the current namespace.
.DESCRIPTION
    This script lists all services in the current Kubernetes namespace using kubectl.
.EXAMPLE
    .\kubectl-get-services.ps1
.NOTES
    Dependencies: kubectl
#>

kubectl get services
