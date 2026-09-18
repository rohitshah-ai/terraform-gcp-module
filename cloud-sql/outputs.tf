output "instance_name" {
  value = google_sql_database_instance.this.name
}

output "connection_name" {
  value = google_sql_database_instance.this.connection_name
}

output "database_name" {
  description = "Created database name"
  value       = google_sql_database.database.name
}

output "database_username" {
  description = "Created database username"
  value       = google_sql_user.user.name
}
