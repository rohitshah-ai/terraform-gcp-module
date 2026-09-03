variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "vpc_name" {
  description = "VPC network name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet IPv4 CIDR range"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "bgp_routing_mode" {
  description = "BGP routing mode"
  type        = string
  default     = "REGIONAL"
}

variable "bgp_best_path_selection_mode" {
  description = "BGP best path selection mode"
  type        = string
  default     = "LEGACY"
}
