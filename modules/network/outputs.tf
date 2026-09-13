output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Needed by data-source lookups and anything addressing subnets by name."
  value       = azurerm_virtual_network.vnet.name
}

output "aks_subnet_id" {
  value = azurerm_subnet.aks.id
}

output "endpoints_subnet_id" {
  description = "Where the Postgres private endpoint lands."
  value       = azurerm_subnet.endpoints.id
}
