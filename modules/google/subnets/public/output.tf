output "id" {
  value       = google_compute_subnetwork.public_subnetwork.id
  description = "The created subnet resource"
}

output "gateway_address" {
  value       = google_compute_subnetwork.public_subnetwork.gateway_address
  description = "The IP address of the gateway."
}

output "self_link" {
  value       = google_compute_subnetwork.public_subnetwork.self_link
  description = "The URL of the created resource"
}