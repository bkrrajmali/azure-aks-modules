terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Sets a single server parameter. Some parameters (shared_buffers,
# max_connections, pgbouncer.enabled) restart the server when changed, which
# means downtime on a non-HA server.
resource "azurerm_postgresql_flexible_server_configuration" "this" {
  name      = var.name
  server_id = var.server_id
  value     = var.value
}
