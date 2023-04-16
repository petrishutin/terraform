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
}

variable "preemptible" {
  type    = bool
  default = false
}

variable "on_host_maintenance" {
  type    = string
  default = "MIGRATE"
}

variable "image" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "network" {
  type = string
}

variable "ssh_keys" {
  type    = string
  default = ""
}