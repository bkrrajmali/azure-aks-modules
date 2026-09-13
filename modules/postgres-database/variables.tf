variable "name" {
  description = "Database name."
  type        = string
}

variable "server_id" {
  description = "Resource ID of the flexible server. Pass module.postgres_server.id."
  type        = string
}

variable "collation" {
  description = "Cannot be changed after creation."
  type        = string
  default     = "en_US.utf8"
}

variable "charset" {
  type    = string
  default = "UTF8"
}
