variable "project_id" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "database_name" {
  description = "Database name to create"
  type        = string
}

variable "database_username" {
  description = "Application database username"
  type        = string
}

variable "database_password" {
  description = "Application database password"
  type        = string
  sensitive   = true
}

variable "private_network" {
  description = "VPC network self-link for Cloud SQL private IP"
  type        = string
}

variable "edition" {
  type    = string
  default = "ENTERPRISE"
}

variable "cloudsql_region" {
  type    = string
  default = "us-east1"
}

variable "database_version" {
  description = "Cloud SQL database version"
  type        = string
  default     = "MYSQL_8_0"
}

variable "tier" {
  type    = string
  default = "db-f1-micro"
}

variable "disk_size" {
  type    = number
  default = 20
}

variable "availability_type" {
  type    = string
  default = "ZONAL"
}

variable "backup_enabled" {
  type    = bool
  default = true
}

variable "point_in_time_recovery" {
  type    = bool
  default = true
}

variable "deletion_protection" {
  type    = bool
  default = true
}
