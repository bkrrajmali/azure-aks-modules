output "acr_id" {
  description = "The resource ID of the Azure Container Registry."
  value       = azurerm_container_registry.acr.id
}

output "name" {
  value = azurerm_container_registry.acr.name
}

output "login_server" {
  description = "Registry hostname. Prefix your image tags with this."
  value       = azurerm_container_registry.acr.login_server
}
