output "id" {
  value = azurerm_private_dns_zone.this.id
}

output "name" {
  description = "The link module takes the zone by name, not by ID."
  value       = azurerm_private_dns_zone.this.name
}
