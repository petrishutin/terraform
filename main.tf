module "vpc-module" {
  source  = "./modules/vpc"
  name    = var.vpc_name
  project = var.google_project
}

module "private_subnet" {
  source               = "./modules/subnets/private"
  name                 = var.private_subnet_name
  ip_cidr_range        = var.private_ip_subnet_cidr_range
  region               = var.region
  network              = module.vpc-module.id
  secondary_range_name = var.private_range_name
  secondary_ip_ranges  = var.private_secondary_ip_ranges
}

module "nat" {
  source          = "./modules/subnets/nat"
  subnetwork_name = module.private_subnet.id
  router_name     = module.vpc-module.router_name
}

module "public_subnet" {
  source               = "./modules/subnets/public"
  name                 = var.public_subnet_name
  ip_cidr_range        = var.public_ip_subnet_cidr_range
  region               = var.region
  network              = module.vpc-module.id
  secondary_range_name = var.public_range_name
  secondary_ip_ranges  = var.public_secondary_ip_ranges
}

module "public_subnet_firewall" {
  source = "./modules/firewall/"
  firewall_name = var.firewall_for_public_subnet
  network = var.public_subnet_name
  firewall_ports = var.public_subnet_firewall_ports
}