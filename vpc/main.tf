resource "google_compute_network" "this" {
  name                         = var.vpc_name
  project                      = var.project_id
  auto_create_subnetworks     = false
  routing_mode                = var.bgp_routing_mode
  bgp_best_path_selection_mode = var.bgp_best_path_selection_mode
}

resource "google_compute_subnetwork" "this" {
  name                     = var.subnet_name
  project                  = var.project_id
  region                   = var.region
  network                  = google_compute_network.this.id
  ip_cidr_range            = var.subnet_cidr
  stack_type               = "IPV4_ONLY"
  private_ip_google_access = true
}

resource "google_compute_global_address" "private_service_range" {
  project       = var.project_id
  name          = "${var.vpc_name}-ip-range"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.this.self_link
}

resource "google_service_networking_connection" "private_service_access" {
  network = google_compute_network.this.self_link
  service = "servicenetworking.googleapis.com"

  reserved_peering_ranges = [
    google_compute_global_address.private_service_range.name
  ]
}
