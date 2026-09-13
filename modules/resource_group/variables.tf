variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --- added, both defaulted so existing calls need no change ---

variable "create_lock" {
  description = "Apply a CanNotDelete lock. Note it blocks your intentional destroy too: set false, apply, then destroy."
  type        = bool
  default     = false
}

variable "lock_notes" {
  description = "Shown to whoever hits the lock, so make it useful."
  type        = string
  default     = "Locked to prevent accidental deletion."
}
