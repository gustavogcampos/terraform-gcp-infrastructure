# Create bucket
module "storage" {
  source = "./modules/terraform-gcp-storage"

  bucket_name          = "gustavo-test-bucket"
  bucket_location      = "US"
  bucket_storage_class = "MULTI_REGIONAL"
  bucket_force_destroy = true
}

# Create vpc
module "network" {
  source = "./modules/terraform-gcp-network"

  network_name     = "gustavo-test-network"
  vpc_network_cidr = "10.0.0.0/20"
}

# Create database
module "database" {
  source = "./modules/terraform-gcp-database"

  db_name              = "gustavo-test-db"
  db_instance_name     = "gustavo-test-pg"
  db_version           = "POSTGRES_15"
  db_tier              = "db-f1-micro"
  db_delete_protection = false
}

# Create virtual machine
module "compute" {
  source = "./modules/terraform-gcp-compute"

  vm_name                = "gustavo-test-vm"
  vm_type                = "e2-medium"
  vm_zone                = "us-central1-c"
  vm_image               = "debian-12"
  vm_image_project       = "debian-cloud"
  vm_tags                = ["web"]
  vm_network             = module.network.network
  vm_subnet              = module.network.subnet
  vm_deletion_protection = false
}
