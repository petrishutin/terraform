module "vpc-module" {
  source  = "./modules/vpc"
  name    = var.my_vpc_name
  project = var.my_google_project
}
