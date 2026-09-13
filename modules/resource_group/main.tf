resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# Optional. Defaults to off, so existing callers are unaffected.
# CanNotDelete blocks accidental deletion of the group and everything in it --
# worth it for the database, pointless for a rebuildable cluster.
resource "azurerm_management_lock" "rg" {
  count = var.create_lock ? 1 : 0

  name       = "lock-${var.resource_group_name}"
  scope      = azurerm_resource_group.rg.id
  lock_level = "CanNotDelete"
  notes      = var.lock_notes
}
