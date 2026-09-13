terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Grants an Entra principal ADMIN rights on the server. Terraform can only
# manage administrators; non-admin database roles require running
# pgaadauth_create_principal() as SQL inside the database.
#
# Note this resource takes server_name plus resource_group_name, not server_id.
resource "azurerm_postgresql_flexible_server_active_directory_administrator" "this" {
  server_name         = var.server_name
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  object_id           = var.object_id
  principal_name      = var.principal_name
  principal_type      = var.principal_type
}
