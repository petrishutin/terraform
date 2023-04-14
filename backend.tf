terraform {
  backend "gcs" {
    bucket      = "petro83-bucket-tfstate"
    prefix      = "terraform/state"
    credentials = "real-credentials.json"
  }
}