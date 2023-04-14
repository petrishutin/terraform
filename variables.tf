variable "my_vpc_name" {
  description = "Name of VPC"
  default = ""
}

variable "my_google_project" {
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