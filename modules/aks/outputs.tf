output "cluster_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "cluster_fqdn" {
  value = azurerm_kubernetes_cluster.aks.fqdn
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}

output "kubelet_identity" {
  value = azurerm_kubernetes_cluster.aks.kubelet_identity
}

# Flattened, so callers don't have to write [0].object_id. This is the identity
# that needs AcrPull on the registry.
output "kubelet_identity_object_id" {
  value = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}

# oidc_issuer_enabled is set in main.tf but the URL was never exported.
# Required for workload identity federated credentials.
output "oidc_issuer_url" {
  value = azurerm_kubernetes_cluster.aks.oidc_issuer_url
}

output "node_resource_group" {
  description = "The MC_* group Azure creates for node VMSS, load balancers and disks."
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}
