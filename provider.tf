#resource "google_storage_bucket" "default" {
#  name          = "flawless-acre-387710-tf-state"
#  force_destroy = false
#  location      = "US"
#  storage_class = "STANDARD"
#  versioning {
#    enabled = true
#  }
#  public_access_prevention = "enforced"
#}

provider "google" {
  project     = var.project_number
  region      = "europe-west3"
  zone        = "europe-west3-a"
  credentials = var.gcp-creds
}

variable "gcp-creds" {
  default = "real-credentials.json"
}