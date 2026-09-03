output "vpc_name" {
  description = "VPC network name"
  value       = google_compute_network.this.name
}

output "vpc_id" {
  description = "VPC network ID"
  value       = google_compute_network.this.id
}

output "subnet_name" {
  description = "Subnet name"
  value       = google_compute_subnetwork.this.name
}

output "subnet_id" {
  description = "Subnet ID"
  value       = google_compute_subnetwork.this.id
}

output "subnet_cidr" {
  description = "Subnet CIDR"
  value       = google_compute_subnetwork.this.ip_cidr_range
}
