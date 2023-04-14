output "name" {
  description = "Bucket name (for single use)."
  value       = google_storage_bucket.my-bucket.name
}

output "urls" {
  description = "Bucket URLs."
  value       = google_storage_bucket.my-bucket.url
}