variable "server_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "object_id" {
  description = "Object ID of the user, group or service principal."
  type        = string
}

variable "principal_name" {
  description = "Display name. For a managed identity this becomes the Postgres role name, so it is also the login username."
  type        = string
}

variable "principal_type" {
  description = "User, Group or ServicePrincipal. Managed identities are ServicePrincipal."
  type        = string
  default     = "ServicePrincipal"
}
