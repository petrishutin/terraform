#For VPC
vpc_name       = "my-app"
google_project = "flawless-acre-387710"
project_number = "406365148648"

#For subnet and for artifact_registry
region = "us-central1"

private_subnet_name          = "private-subnet"
private_ip_subnet_cidr_range = "10.0.0.0/18"
k8s_pod_range_name          = "k8s-pod-range"
k8s_pod_range               = "10.48.0.0/14"
k8s_service_range_name      = "k8s-service-range"
k8s_service_range           = "10.52.0.0/20"

public_subnet_name          = "public-subnet"
public_ip_subnet_cidr_range = "10.1.0.0/16"
public_range_name           = "public-secondary-range"
public_secondary_ip_ranges  = "192.168.20.0/24"

#For buckets
name_for_bucket1     = "flawless-acre-387710-bucket1"
name_for_bucket2     = "flawless-acre-387710-bucket2"
name_for_bucket3     = "flawless-acre-387710-bucket3"
name_for_bucket4     = "flawless-acre-387710-bucket4"
bucket_force_destroy = true

#For firewall
firewall       = "firewall"
firewall_ports = ["22", "80"]

#For vmUS
vm_name_public  = "public-vm"
vm_name_private = "private-vm"
zone            = "us-central1-a"

#For container_registry
#registry_location = "US" # for container_registry, NOT for artifact_registry
service_account_email = "main-139@flawless-acre-387710.iam.gserviceaccount.com"

#For artifact_registry
repository_id = "repo1"

#For kubernetes
cluster_name = "dev"
