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
  default = "my-bucket"
}

variable "name_for_bucket2" {
  type    = string
  default = "my-bucket2"
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

variable "vm_name" {
  type        = string
  description = " "
}

variable "zone" {
  type        = string
  description = "us-central1-a"
}