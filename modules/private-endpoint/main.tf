terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# A NIC in your subnet that fronts a PaaS resource. Knows nothing about
# Postgres -- target_resource_id and subresource_name do all the work.
resource "azurerm_private_endpoint" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = var.subnet_id
  tags                = var.tags

  private_service_connection {
    name                           = "psc-${var.name}"
    private_connection_resource_id = var.target_resource_id
    subresource_names              = [var.subresource_name]
    is_manual_connection           = false
  }

  # Registers the A record automatically. Skip the group and you have to manage
  # azurerm_private_dns_a_record yourself.
  dynamic "private_dns_zone_group" {
    for_each = length(var.private_dns_zone_ids) > 0 ? [1] : []

    content {
      name                 = "dns-${var.name}"
      private_dns_zone_ids = var.private_dns_zone_ids
    }
  }
}
