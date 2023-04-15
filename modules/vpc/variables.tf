variable "name" {
  type        = string
  description = "Name of VPC"
  default     = ""
}

variable "subnetworks" {
  type        = bool
  description = "If true, subnetrorks will be created in auto mode"
  default     = false
}

variable "project" {
  type        = string
  description = "Name of project"
  default     = ""
}

variable "routing_mode" {
  type        = string
  description = "Mode of Routing"
  default     = "REGIONAL"
}

variable "region" {
  type        = string
  description = "(Required) The GCP region for this subnetwork."
  default     = "us-central1"
}

variable "delete_default_routes_on_create" {
  type        = bool
  description = " "
  default     = false
}