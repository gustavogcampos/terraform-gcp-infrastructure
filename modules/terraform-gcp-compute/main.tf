# Create virtual machine
resource "google_compute_instance" "vm" {
  name                = var.vm_name
  machine_type        = var.vm_type
  zone                = var.vm_zone
  tags                = var.vm_tags
  deletion_protection = var.vm_deletion_protection

  boot_disk {
    initialize_params {
      image = "${var.vm_image_project}/${var.vm_image}"
      labels = {
        vm_image = var.vm_image
      }
    }
  }

  network_interface {
    network    = var.vm_network
    subnetwork = var.vm_subnet
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

  metadata_startup_script = file("${path.module}/scripts/install_nginx.sh")
}

# Create external IP address
resource "google_compute_address" "static" {
  name = "${var.vm_name}-static-ip-address"
}

# Create a firewall to allow http and https
resource "google_compute_firewall" "rules" {
  name        = "allow-web"
  description = "Allow http and https from any"
  network     = var.vm_network

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = var.vm_tags
}
