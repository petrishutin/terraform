variable "name" {
  type    = string
  default = "my-bucket"
}

variable "force_destroy" {
  default = false
}

variable "location" {
  type    = string
  default = "US"
}

variable "storage_class" {
  type    = string
  default = "STANDARD"
}

variable "versioning_enabled" {
  default = true
}

variable "public_access_prevention" {
  type    = string
  default = "enforced"
}