resource "google_container_registry" "registry" {
  project  = var.project_id
  location = var.location
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_container_registry.registry.id
  role   = "roles/storage.objectViewer"
  member = var.service_account_email
}

#resource "google_container_registry" "container_registry" {
#  project  = "flawless-acre-387710"
#  location = "US"
#}
#
#resource "google_storage_bucket_iam_member" "viewer" {
#  bucket = google_container_registry.container_registry.id
#  role   = "roles/storage.objectViewer"
#  member = "serviceAccount:701145883873-compute@developer.gserviceaccount.com"
#}