# for VPC
vpc_name       = "my-app"
google_project = "august-gradient-382709"

# for subnet
region                       = "us-central1"

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
bucket_force_destroy = true