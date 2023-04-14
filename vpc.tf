module "vpc-module" {
  source  = "./modules/vpc"
  name    = "my-app"
  project = "august-gradient-382709"
}
