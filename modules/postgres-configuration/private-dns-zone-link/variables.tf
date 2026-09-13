variable "name" {
  type = string
}

variable "resource_group_name" {
  description = "Resource group holding the DNS zone, which need not be the VNet's resource group."
  type        = string
}

variable "private_dns_zone_name" {
  type = string
}

variable "virtual_network_id" {
  type = string
}

variable "registration_enabled" {
  description = "Auto-register VM records. Leave false for privatelink zones."
  type        = bool
  default     = false
}

variable "tags" {
  type    = map(string)
  default = {}
}
