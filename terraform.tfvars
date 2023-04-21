# for VPC
vpc_name       = "my-app"
google_project = "august-gradient-382709"

# for subnet and for artifact_registry
region = "us-central1"

private_subnet_name          = "private-subnet"
private_ip_subnet_cidr_range = "10.3.0.0/16"
private_range_name           = "private-secondary-range"
private_secondary_ip_ranges  = "192.168.40.0/24"

public_subnet_name          = "public-subnet"
public_ip_subnet_cidr_range = "10.4.0.0/16"
public_range_name           = "public-secondary-range"
public_secondary_ip_ranges  = "192.168.20.0/24"

# for buckets
name_for_bucket1     = "august-gradient-382709-bucket1"
name_for_bucket2     = "august-gradient-382709-bucket2"
name_for_bucket3     = "august-gradient-382709-bucket3"
name_for_bucket4     = "august-gradient-382709-bucket4"
bucket_force_destroy = true

# for firewall
firewall       = "firewall"
firewall_ports = ["22", "80"]

# for vmUS
vm_name_public  = "public-vm"
vm_name_private = "private-vm"
zone            = "us-central1-a"

# for container_registry
#registry_location = "US" # for container_registry, NOT for artifact_registry

# for artifact_registry
repository_id = "repo1"