resource "google_artifact_registry_repository" "artifact-repo" {
  location      = var.location
  repository_id = var.repository_id
  format        = var.format
  project       = var.gcp_project_id
}