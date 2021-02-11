variable "api_username" {
  type        = string
  description = "Username of API-User to renew key for."
}

variable "rotation_days" {
  type        = number
  description = "Number of days between key rotations."
  default     = 30
}