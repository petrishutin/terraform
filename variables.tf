variable "vpc_name" {
  type        = string
  description = "Name of VPC"
  default     = ""
}

variable "google_project" {
  type        = string
  description = "Name of google project"
  default     = ""
}


variable "name_for_bucket1" {
  type    = string
  default = "my-bucket1"
}

variable "name_for_bucket2" {
  type    = string
  default = "my-bucket2"
}

variable "name_for_bucket3" {
  type    = string
  default = "my-bucket3"
}

variable "name_for_bucket4" {
  type    = string
  default = "my-bucket4"
}


variable "bucket_force_destroy" {
  type    = bool
  default = false
}

# FOR SUBNET
variable "public_subnet_name" {
  type        = string
  description = ""
}

variable "private_subnet_name" {
  type        = string
  description = ""
}

variable "private_ip_subnet_cidr_range" {
  type        = string
  description = " "
}

variable "public_ip_subnet_cidr_range" {
  type        = string
  description = " "
}

variable "region" {
  type        = string
  description = "(Required) The GCP region for this subnetwork."
}


variable "private_range_name" {
  type        = string
  description = " "
}

variable "public_range_name" {
  type        = string
  description = " "
}

variable "private_secondary_ip_ranges" {
  type        = string
  description = " "
}

variable "public_secondary_ip_ranges" {
  type        = string
  description = " "
}

# FOR FIREWALL
variable "firewall" {
  type        = string
  description = " "
}


variable "firewall_ports" {
  type        = list(string)
  description = " "
}

# FOR VMs

variable "vm_name_public" {
  type        = string
  description = " "
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "vm_name_private" {
  type        = string
  description = " "
}

# FOR REGISTRY

#variable "registry_location" {
#  type        = string
#  description = "For container registry"
#}

variable "repository_id" {
  type        = string
  default     = " "
  description = "For artifact registry"
}

#FOR KUBERNETES

variable "cluster_name" {
  type        = string
  default     = " "
  description = " "
}
