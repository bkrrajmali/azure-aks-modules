output "id" {
  value = azurerm_private_endpoint.this.id
}

output "private_ip" {
  description = "Assigned private IP. Handy for a Calico egress rule."
  value       = azurerm_private_endpoint.this.private_service_connection[0].private_ip_address
}
