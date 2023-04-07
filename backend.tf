terraform {
  backend "gcs" {
    bucket  = "petro83-bucket-tfstate"
    prefix  = "terraform/state"
    credentials = "august-gradient-382709-4b9ffd1c6f72.json"
  }
}