variable "region" {
  type        = string
  description = "(Required) The GCP region for this subnetwork."
  default     = "us-central1"
}

variable "subnetwork_name" {
  type        = string
  description = "."
  default     = ""
}

variable "router_name" {
  type        = string
  description = "."
  default     = ""
}