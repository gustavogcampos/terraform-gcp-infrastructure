# Network variables
variable "network_name" {
  description = "Name of the network"
  type        = string
  default     = ""
}

variable "vpc_network_cidr" {
  description = "CIDR of the vpc network"
  type        = string
  default     = ""
}

