resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "petro83-bucket-tfstate"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

provider "google" {
  project = "701145883873"
  region = "europe-west3"
  zone = "europe-west3-a"
  credentials = var.gcp-creds
}


variable "gcp-creds" {
  default = "august-gradient-382709-4b9ffd1c6f72.json"
}