resource "google_storage_bucket" "my-bucket" {
  name          = var.name
  force_destroy = var.force_destroy
  location      = var.location
  storage_class = var.storage_class
  versioning {
    enabled = var.versioning_enabled
  }
  public_access_prevention = var.public_access_prevention
}