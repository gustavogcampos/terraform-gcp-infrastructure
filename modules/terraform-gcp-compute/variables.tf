# VM variables
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = ""
}

variable "vm_type" {
  description = "Type of the virtual machine"
  type        = string
  default     = ""
}

variable "vm_zone" {
  description = "Zone of the virtual machine"
  type        = string
  default     = ""
}

variable "vm_image" {
  description = "Image of the virtual machine"
  type        = string
  default     = ""
}

variable "vm_image_project" {
  description = "Image project of the virtual machine"
  type        = string
  default     = ""
}

variable "vm_tags" {
  description = "Image of the virtual machine"
  type        = list(string)
  default     = []
}

variable "vm_network" {
  description = "Network of the virtual machine"
  type        = string
  default     = ""
}

variable "vm_subnet" {
  description = "Subnet of the virtual machine"
  type        = string
  default     = ""
}

variable "vm_deletion_protection" {
  description = "Deletion protection of the virtual machine"
  type        = string
  default     = true
}


