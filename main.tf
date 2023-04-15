module "vpc-module" {
  source  = "./modules/vpc"
  name    = var.vpc_name
  project = var.google_project
}

module "subnet" {
  source              = "./modules/subnet"
  name         = var.subnet_name
  ip_cidr_range       = var.ip_subnet_cidr_range
  region              = var.region
  network             = module.vpc-module.id
  secondary_range_name          = var.range_name
  secondary_ip_ranges = var.secondary_ip_ranges
}
