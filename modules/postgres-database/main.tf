terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

resource "azurerm_postgresql_flexible_server_database" "this" {
  name      = var.name
  server_id = var.server_id
  collation = var.collation
  charset   = var.charset

  #lifecycle {
    # Dropping a database drops the data. This also blocks `terraform destroy`
    # on the whole config until you remove it -- deliberate friction.
    #prevent_destroy = true
  }
}
