terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Only has any effect when the server has public network access enabled.
# With a private endpoint and public access off, these rules are inert.
resource "azurerm_postgresql_flexible_server_firewall_rule" "this" {
  name             = var.name
  server_id        = var.server_id
  start_ip_address = var.start_ip_address
  end_ip_address   = var.end_ip_address
}
