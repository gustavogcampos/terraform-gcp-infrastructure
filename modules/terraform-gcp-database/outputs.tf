# Database outputs
output "db_instance_name" {
  description = "Name of the instance"
  value       = google_sql_database_instance.instance.name
}

output "db_connection_name" {
  description = "Connection name of the database"
  value       = google_sql_database_instance.instance.connection_name
}

output "db_secret_name" {
  description = "Secret name of the database"
  value       = google_secret_manager_secret.db_secret_name.name
}
