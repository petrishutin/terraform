variable "network" {
  type        = string
  description = "(Required) The VPC network the subnets belong to. Only networks that are in the distributed mode can have subnetworks."
}

variable "name" {
  type        = string
  description = "(Required) The name of this subnetwork, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with [RFC1035](https://datatracker.ietf.org/doc/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash."
}

variable "region" {
  type        = string
  description = "(Required) The GCP region for this subnetwork."
}

variable "ip_cidr_range" {
  type        = string
  description = "(Required) The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported."
}

variable "secondary_ip_ranges" {
  type        = any
  description = "An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges."
  default     = []
}

variable "secondary_range_name" {
  type        = string
  description = ""
}
