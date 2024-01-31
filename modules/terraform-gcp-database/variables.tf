# Database variables
variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = ""
}

variable "db_instance_name" {
  description = "Name of the database instance"
  type        = string
  default     = ""
}

variable "db_version" {
  description = "Storage Class of the database."
  type        = string
  default     = ""
}

variable "db_tier" {
  description = "Tier of the database."
  type        = string
  default     = "db-f1-micro"
}

variable "db_delete_protection" {
  description = "Delete protection of the database"
  type        = bool
  default     = true
}
