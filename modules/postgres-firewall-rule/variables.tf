variable "name" {
  type = string
}

variable "server_id" {
  type = string
}

variable "start_ip_address" {
  description = "Use 0.0.0.0 for both start and end to allow Azure services."
  type        = string
}

variable "end_ip_address" {
  type = string
}
