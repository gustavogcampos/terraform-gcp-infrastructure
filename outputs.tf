# Storage outputs
output "bucket_name" {
  description = "Name of the bucket."
  value       = module.storage.bucket_name
}

output "bucket_url" {
  description = "URL of the bucket"
  value       = module.storage.bucket_url
}

output "bucket_location" {
  description = "Storage of the bucket"
  value       = module.storage.bucket_location
}

# Network outputs
output "network" {
  description = "Name of the network"
  value       = module.network.network
}

output "subnet" {
  description = "Name of the subnet"
  value       = module.network.subnet
}

# Database outputs
output "db_instance_name" {
  description = "Name of the instance"
  value       = module.database.db_instance_name
}

output "db_connection_name" {
  description = "DNS of the database"
  value       = module.database.db_connection_name
}

output "db_secret_name" {
  description = "Secret of the database"
  value       = module.database.db_secret_name
}


# VM outputs
output "compute_name" {
  description = "Name of the virtual machine"
  value       = module.compute.vm_name
}

output "compute_internal_ip" {
  description = "Tags of the virtual machine"
  value       = module.compute.vm_internal_ip
}

output "compute_external_ip" {
  description = "Tags of the virtual machine"
  value       = module.compute.vm_external_ip
}
