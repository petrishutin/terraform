output "name" {
  description = "Bucket name (for single use)."
  value       = google_storage_bucket.my-bucket.name
}