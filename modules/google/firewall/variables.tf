variable "firewall_name" {
  type    = string
  default = "firewall"
}

variable "network" {
  type    = string
  default = "default"
}

variable "firewall_protocol" {
  type    = string
  default = "tcp"
}

variable "firewall_ports" {
  type    = list(string)
  default = ["22"]
}

variable "firewall_source_ranges" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}