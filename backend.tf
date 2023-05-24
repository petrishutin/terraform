terraform {
  backend "gcs" {
    bucket      = "august-gradient-382709-tfstate"
    prefix      = "terraform/state"
    credentials = "real-credentials.json"
  }
}