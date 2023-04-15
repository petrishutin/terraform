output "subnetwork" {
  value       = try(google_compute_subnetwork.subnetwork, null)
  description = "The created subnet resource"
}