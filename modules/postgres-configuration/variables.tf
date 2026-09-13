variable "name" {
  description = "Parameter name, e.g. azure.extensions or log_min_duration_statement."
  type        = string
}

variable "server_id" {
  type = string
}

variable "value" {
  description = "Parameter value. Always a string, even for numbers and booleans."
  type        = string
}
