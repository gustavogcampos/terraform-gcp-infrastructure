# Network outputs
output "network" {
  description = "Name of the network"
  value       = google_compute_network.network.id
}

output "subnet" {
  description = "Name of the subnet"
  value       = google_compute_subnetwork.subnet.id
}
