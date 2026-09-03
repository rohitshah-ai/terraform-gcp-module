resource "google_compute_network" "this" {
  name                            = var.vpc_name
  project                         = var.project_id
  auto_create_subnetworks         = false
  routing_mode                    = var.bgp_routing_mode
  bgp_best_path_selection_mode    = var.bgp_best_path_selection_mode
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
