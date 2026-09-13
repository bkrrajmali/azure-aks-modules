output "id" {
  description = "Consumed by every other postgres module and by the private endpoint."
  value       = azurerm_postgresql_flexible_server.this.id
}

output "name" {
  value = azurerm_postgresql_flexible_server.this.name
}

output "fqdn" {
  description = "Resolves to the private endpoint IP from inside a linked VNet."
  value       = azurerm_postgresql_flexible_server.this.fqdn
}

output "resource_group_name" {
  value = azurerm_postgresql_flexible_server.this.resource_group_name
}
