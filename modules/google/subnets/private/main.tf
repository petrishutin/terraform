resource "google_compute_subnetwork" "private_subnetwork" {
  name          = var.name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = var.network
  purpose       = var.purpose

  secondary_ip_range {
    range_name    = var.k8s_pod_range_name
    ip_cidr_range = var.k8s_pod_range
  }

  secondary_ip_range {
    range_name    = var.k8s_service_range_name
    ip_cidr_range = var.k8s_service_range
  }
}