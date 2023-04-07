

#resource "google_storage_bucket" "terraform_output" { # ресурс объявляется так: тип ресурса + имя ресурса
#  name = "terraform_output_1754" # глобально создаем бакет с именем terraform_output_1754 - имя уникальное на все облако
#  location = "EUROPE-WEST3"
#  force_destroy = true
#  uniform_bucket_level_access = true
#}

#resource "google_compute_instance" "vm_instance" {
#  name         = "terraform-instance"
#  machine_type = "e2-micro"
#
#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-11"
#    }
#  }
#
#  network_interface {
#    # A default network is created for all GCP projects
#    network = "default"
#    access_config {
#    }
#  }
#}