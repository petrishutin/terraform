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

module "firewall" {
  source         = "./modules/firewall/"
  firewall_name  = var.firewall
  network        = module.vpc-module.id
  firewall_ports = var.firewall_ports
}

module "virtual_machine_public" {
  source     = "./modules/vm/external"
  name       = var.vm_name_public
  zone       = var.zone
  #network    = module.vpc-module.id
  subnetwork = var.public_subnet_name
  ssh_keys   = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
}

module "virtual_machine_private" {
  source     = "./modules/vm/internal"
  name       = var.vm_name_private
  zone       = var.zone
  #network    = module.vpc-module.id
  subnetwork = var.private_subnet_name
  ssh_keys   = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
}

#module "registry" {
#  source = "modules/container_registry"
#  project_id   = var.google_project
#  location = var.registry_location
#}

module "artifact_registry" {
  source = "./modules/artifact_registry"
  repository_id = var.repository_id
  location = var.region
}