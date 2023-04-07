resource "google_storage_bucket" "my-bucket" {
  name = "my-bucket"
  location = "EUROPE-WEST3"
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}