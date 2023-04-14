resource "google_storage_bucket" "default" {
  name          = "petro83-bucket-tfstate"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
  public_access_prevention = "enforced"
}



provider "google" {
  project     = "701145883873"
  region      = "europe-west3"
  zone        = "europe-west3-a"
  credentials = var.gcp-creds
}


variable "gcp-creds" {
  default = "real-credentials.json"
}