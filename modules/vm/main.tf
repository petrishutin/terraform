resource "google_compute_instance" "vm_instance" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  scheduling {
    preemptible         = true
    on_host_maintenance = var.on_host_maintenance
  }
  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
  }

  metadata = {
    ssh-keys = var.ssh_keys
  }
}
