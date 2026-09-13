terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Service-agnostic. The zone name is what makes it specific:
#   Postgres -> privatelink.postgres.database.azure.com
#   ACR      -> privatelink.azurecr.io
#   Blob     -> privatelink.blob.core.windows.net
resource "azurerm_private_dns_zone" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
