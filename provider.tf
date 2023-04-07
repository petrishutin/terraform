provider "google" {
  project = "701145883873"
  region = "europe-west3"
  zone = "europe-west3-a"
  credentials = var.gcp-creds
}



variable "gcp-creds" {
  default = "august-gradient-382709-3573b6799dba.json"
}