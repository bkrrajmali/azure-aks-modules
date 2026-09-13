variable "name" {
  description = "Server name. Globally unique across all of Azure, not just your subscription."
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "postgres_version" {
  description = "Major version. Upgrades are one-way."
  type        = string
  default     = "17"
}

variable "sku_name" {
  description = "Burstable (B_) SKUs support neither HA nor geo-redundant backup."
  type        = string
  default     = "B_Standard_B1ms"
}

variable "storage_mb" {
  description = "Grows but never shrinks. A decrease forces replacement."
  type        = number
  default     = 32768
}

variable "storage_tier" {
  description = "IOPS tier. Valid values depend on storage_mb. Null lets Azure choose."
  type        = string
  default     = null
}

variable "auto_grow_enabled" {
  type    = bool
  default = true
}

variable "zone" {
  type    = string
  default = "1"
}

variable "administrator_login" {
  description = "Cannot be azure_superuser, azure_pg_admin, admin, administrator, root, guest or public."
  type        = string
  default     = "pgadmin"
}

variable "administrator_password" {
  type      = string
  sensitive = true
}

variable "backup_retention_days" {
  description = "Between 7 and 35."
  type        = number
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  description = "Cannot be changed after creation."
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Keep false and reach the server through a private endpoint."
  type        = bool
  default     = false
}

variable "high_availability" {
  type = object({
    mode                      = string
    standby_availability_zone = optional(string)
  })
  default = null
}

variable "maintenance_window" {
  description = "day_of_week 0 is Sunday. Times are UTC."
  type = object({
    day_of_week  = number
    start_hour   = number
    start_minute = optional(number, 0)
  })
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "entra_auth_enabled" {
  description = "Enables Microsoft Entra authentication. Required before an Entra administrator can be assigned."
  type        = bool
  default     = false
}

variable "password_auth_enabled" {
  description = "Keep true unless you have moved every consumer to Entra tokens."
  type        = bool
  default     = true
}

variable "tenant_id" {
  description = "Entra tenant. Required when entra_auth_enabled is true."
  type        = string
  default     = null
}
