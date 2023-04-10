variable "name" {
  description = "Name of VPC"
  default = ""
}

variable "subnetworks" {
  description = "If true, subnetrorks will be created in auto mode"
  default     = false
}

variable "project" {
  description = "Name of project"
  default = ""
}
