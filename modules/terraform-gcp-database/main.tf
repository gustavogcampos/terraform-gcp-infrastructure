# Create a SQL database
resource "google_sql_database" "database" {
  name     = var.db_name
  instance = google_sql_database_instance.instance.name
}

# Create a SQL database instance
resource "google_sql_database_instance" "instance" {
  name             = var.db_instance_name
  database_version = var.db_version
  root_password    = random_password.password.result
  settings {
    tier = var.db_tier
  }
  deletion_protection = var.db_delete_protection
}

# Generate random password
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

# Create secret name in the secret manager
resource "google_secret_manager_secret" "db_secret_name" {
  secret_id = google_sql_database_instance.instance.name

  replication {
    auto {}
  }
}

# Create secret password in the secret manager
resource "google_secret_manager_secret_version" "db_secret" {
  secret      = google_secret_manager_secret.db_secret_name.id
  secret_data = random_password.password.result

  depends_on = [
    random_password.password
  ]
}
