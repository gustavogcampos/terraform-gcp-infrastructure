# Storage variables

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = ""
}

variable "bucket_location" {
  description = "Location of the bucket"
  type        = string
  default     = ""
}

# variable "bucket_data_locations" {
#   description = "Locations of the bucket data"
#   type        = list(string)
#   default     = []
# }

variable "bucket_storage_class" {
  description = "Storage Class of the bucket"
  type        = string
  default     = ""
}

variable "bucket_force_destroy" {
  description = "Delete content before the bucket"
  type        = bool
  default     = false
}

variable "bucket_public_access_prevention" {
  description = "Prevents public access to the bucket"
  type        = string
  default     = "enforced"
}
