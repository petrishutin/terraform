resource "google_compute_network" "vpc" {
  name                            = var.name
  auto_create_subnetworks         = var.subnetworks
  project                         = var.project
  routing_mode                    = var.routing_mode
  delete_default_routes_on_create = var.delete_default_routes_on_create
  description                     = "This module creates a VPC - if auto_create_subnetworks is set to true, a subnet for each reagion will be created automatically"
}

resource "google_compute_router" "router" {
  name    = "router"
  region  = var.region
  network = google_compute_network.vpc.id
}