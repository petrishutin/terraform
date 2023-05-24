#module "vpc-module" {
#  source  = "./modules/google/vpc"
#  name    = var.vpc_name
#  project = var.google_project
#}
#
#module "private_subnet" {
#  source                 = "./modules/google/subnets/private"
#  name                   = var.private_subnet_name
#  ip_cidr_range          = var.private_ip_subnet_cidr_range
#  region                 = var.region
#  network                = module.vpc-module.id
#  k8s_pod_range_name     = var.k8s_pod_range_name
#  k8s_pod_range          = var.k8s_pod_range
#  k8s_service_range_name = var.k8s_service_range_name
#  k8s_service_range      = var.k8s_service_range
#}
#
#module "nat" {
#  source          = "./modules/google/subnets/nat"
#  subnetwork_name = module.private_subnet.id
#  router_name     = module.vpc-module.router_name
#}
#
#module "public_subnet" {
#  source               = "./modules/google/subnets/public"
#  name                 = var.public_subnet_name
#  ip_cidr_range        = var.public_ip_subnet_cidr_range
#  region               = var.region
#  network              = module.vpc-module.id
#  secondary_range_name = var.public_range_name
#  secondary_ip_ranges  = var.public_secondary_ip_ranges
#
#}
#
#module "firewall" {
#  source         = "./modules/google/firewall/"
#  firewall_name  = var.firewall
#  network        = module.vpc-module.id
#  firewall_ports = var.firewall_ports
#}
#
##module "virtual_machine_public" {
##  source     = "./modules/vm/external"
##  name       = var.vm_name_public
##  zone       = var.zone
##  #network    = module.vpc-module.id
##  subnetwork = var.public_subnet_name
##  ssh_keys   = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
##}
#
##module "virtual_machine_private" {
##  source     = "./modules/vm/internal"
##  name       = var.vm_name_private
##  zone       = var.zone
##  #network    = module.vpc-module.id
##  subnetwork = var.private_subnet_name
##  ssh_keys   = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
##}
#
##module "registry" {
##  source = "modules/container_registry"
##  project_id   = var.google_project
##  location = var.registry_location
##}
#
#module "artifact_registry" {
#  source         = "./modules/google/artifact_registry"
#  repository_id  = var.repository_id
#  location       = var.region
#  gcp_project_id = var.google_project
#}
#
#module "k8s" {
#  source     = "./modules/google/k8s"
#  name       = var.cluster_name
#  network    = module.vpc-module.self_link
#  subnetwork = module.private_subnet.self_link
#}