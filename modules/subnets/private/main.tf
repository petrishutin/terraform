resource "google_compute_subnetwork" "private_subnetwork" {
  name          = var.name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = var.network
  purpose       = var.purpose

  secondary_ip_range {
    range_name    = var.secondary_range_name
    ip_cidr_range = var.secondary_ip_ranges
  }

  secondary_ip_range {
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.48.0.0/14"
  }

  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.52.0.0/20"
  }
}