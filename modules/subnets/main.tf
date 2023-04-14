resource "google_compute_subnetwork" "subnet" {
  name          = var.name
  ip_cidr_range = "172.16.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
  secondary_ip_range {
    range_name    = "k8s-pods"
    ip_cidr_range = "172.22.0.0/16"
  }
  secondary_ip_range {
    range_name    = "k8s-services"
    ip_cidr_range = "172.16.2.0/24"
  }
}