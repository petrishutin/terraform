output "name" {
  value       = google_compute_network.vpc.name
  description = "The unique name of the network"
}

output "gateway_ipv4" {
  value       = google_compute_network.vpc.gateway_ipv4
  description = "The IPv4 address of the gateway"
}

output "self_link" {
  value       = google_compute_network.vpc.self_link
  description = "The URI of the created resource"
}

output "id" {
  value       = google_compute_network.vpc.id
  description = "The ID of VPC"
}

output "router_name" {
  value       = google_compute_router.router.name
  description = "The ID of VPC"
}