module "bucket1" {
  source = "./modules/buckets"
  name   = var.name_for_bucket1
  force_destroy = var.bucket_force_destroy
}

module "bucket2" {
  source = "./modules/buckets"
  name   = var.name_for_bucket2
  force_destroy = var.bucket_force_destroy
}

module "bucket3" {
  source = "./modules/buckets"
  name   = var.name_for_bucket3
  force_destroy = var.bucket_force_destroy
}

module "bucket4" {
  source = "./modules/buckets"
  name   = var.name_for_bucket4
  force_destroy = var.bucket_force_destroy
}