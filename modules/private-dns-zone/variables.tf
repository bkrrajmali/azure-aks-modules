variable "name" {
  description = "Zone name. Azure mandates an exact value per service type."
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
