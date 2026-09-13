variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "subnet_id" {
  description = "Subnet for the endpoint NIC. Your endpoints-subnet."
  type        = string
}

variable "target_resource_id" {
  description = "Resource ID of the PaaS service being fronted."
  type        = string
}

variable "subresource_name" {
  description = "postgresqlServer for Postgres, registry for ACR, blob for storage, vault for Key Vault."
  type        = string
}

variable "private_dns_zone_ids" {
  description = "Zones to auto-register the A record in. Empty means no DNS group."
  type        = list(string)
  default     = []
}

variable "tags" {
  type    = map(string)
  default = {}
}
