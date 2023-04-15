output "subnetwork" {
  value       = try(google_compute_subnetwork.public_subnetwork, null)
  description = "The created subnet resource"
}