terraform {
  backend "gcs" {
    bucket      = "flawless-acre-tf-state"
    prefix      = "terraform/state"
    credentials = "real-credentials.json"
  }
}