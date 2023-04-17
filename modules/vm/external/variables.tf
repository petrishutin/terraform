variable "name" {
  type    = string
  default = " "
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}

variable "zone" {
  type = string
  default = " "
}

variable "image" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "network" {
  type = string
  default = ""
}

variable "subnetwork" {
  type = string
  default = ""
}

variable "ssh_keys" {
  type    = string
  default = ""
}

variable "region" {
  type        = string
  description = "(Required) The GCP region for this subnetwork."
  default     = "us-central1"
}