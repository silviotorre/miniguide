# Kubectl Cheatsheet

A quick reference for common `kubectl` commands to manage Kubernetes clusters.

## 📋 Basic Commands
- `kubectl get pods` - List all pods in the current namespace.
- `kubectl get services` - List all services in the current namespace.
- `kubectl get nodes` - List all nodes in the cluster.

## 📂 Namespace Management
- `kubectl get namespaces` - List all namespaces.
- `kubectl create namespace <name>` - Create a new namespace.
- `kubectl delete namespace <name>` - Delete a namespace.

## 🔄 Pod Management
- `kubectl describe pod <pod-name>` - Show detailed information about a pod.
- `kubectl logs <pod-name>` - View logs for a specific pod.
- `kubectl exec -it <pod-name> -- /bin/bash` - Access a pod's shell.

## 🚀 Deployment Management
- `kubectl get deployments` - List all deployments.
- `kubectl apply -f <file.yaml>` - Apply a configuration file.
- `kubectl delete deployment <deployment-name>` - Delete a deployment.

## 📊 Resource Monitoring
- `kubectl top nodes` - Display resource usage of nodes.
- `kubectl top pods` - Display resource usage of pods.

For more commands, refer to the [Kubernetes Documentation](https://kubernetes.io/docs/reference/kubectl/).
