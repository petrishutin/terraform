resource "google_compute_firewall" "firewall" {
  name    = var.firewall_name
  network = var.network
  allow {
    protocol = var.firewall_protocol
    ports    = var.firewall_ports
  }

  source_ranges = var.firewall_source_ranges
}

#resource "google_compute_firewall" "allow-ssh" {
#  name    = "allow-ssh"
#  network = google_compute_network.main.name
#
#  allow {
#    protocol = "tcp"
#    ports    = ["22"]
#  }
#
#  source_ranges = ["0.0.0.0/0"]
#}