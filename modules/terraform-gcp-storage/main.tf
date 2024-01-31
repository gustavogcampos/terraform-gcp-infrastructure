# Create bucket
resource "google_storage_bucket" "bucket" {
  name                     = var.bucket_name
  location                 = var.bucket_location
  storage_class            = var.bucket_storage_class
  force_destroy            = var.bucket_force_destroy
  public_access_prevention = var.bucket_public_access_prevention
  # custom_placement_config {
  #   data_locations = var.bucket_data_locations
  # }
}
