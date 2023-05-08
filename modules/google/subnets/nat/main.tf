
resource "google_compute_address" "address" {
  name         = "nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = var.region
}

resource "google_compute_router_nat" "nat_manual" {
  name   = "my-router-nat"  # А почему тут my-router-nat, а не manual-route-nat?
  router = var.router_name
  region = var.region


  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips = [google_compute_address.address.self_link]

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = var.subnetwork_name
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}