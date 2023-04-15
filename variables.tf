variable "vpc_name" {
  description = "Name of VPC"
  default = ""
}

variable "google_project" {
  description = "Name of google project"
  default = ""
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
  default = false
}

# FOR SUBNET
variable "subnet_name" {
  type        = string
  description = ""
}

variable "ip_subnet_cidr_range" {
  type        = string
  description = " "
}

variable "region" {
  type        = string
  description = "(Required) The GCP region for this subnetwork."
}


variable "range_name" {
  type        = string
  description = " "
}

variable "secondary_ip_ranges" {
  type        = string
  description = " "
}