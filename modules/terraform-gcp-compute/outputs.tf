# VM outputs
output "vm_name" {
  description = "Name of the vm"
  value       = google_compute_instance.vm.id
}

output "vm_external_ip" {
  description = "External IP of the vm"
  value       = google_compute_instance.vm.network_interface.0.access_config.0.nat_ip
}

output "vm_internal_ip" {
  description = "Internal IP of the vm"
  value       = google_compute_instance.vm.network_interface.0.network_ip
}
