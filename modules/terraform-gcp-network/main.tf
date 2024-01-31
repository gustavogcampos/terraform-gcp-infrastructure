# Define network tier for the project
resource "google_compute_project_default_network_tier" "default" {
  network_tier = "STANDARD"
}

# Create network
resource "google_compute_network" "network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

# Create subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.network_name}-subnet"
  ip_cidr_range = var.vpc_network_cidr
  network       = google_compute_network.network.id
}

# Create network router
resource "google_compute_router" "router" {
  name    = "${var.network_name}-router"
  network = google_compute_network.network.name
}

# Create nat router
resource "google_compute_router_nat" "nat_router" {
  name                               = "${var.network_name}-nat-router"
  router                             = google_compute_router.router.name
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}
