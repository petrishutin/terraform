resource "google_service_account" "kubernetes" {
  account_id = "kubernetes"
}


resource "google_container_node_pool" "general" {
  name       = "general"
  cluster    = google_container_cluster.primary.id
  node_count = 1

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = false
    machine_type = "e2-small"

    labels = {
      role = "general"
    }

    service_account = google_service_account.kubernetes.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_container_node_pool" "general2" {
  name       = "general2"
  cluster    = google_container_cluster.primary.id
  node_count = 1

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = false
    machine_type = "e2-small"

    labels = {
      role = "general"
    }

    service_account = google_service_account.kubernetes.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

#resource "google_container_node_pool" "spot_1" {
#  name    = "spot-a"
#  location   = var.location1
#  cluster = google_container_cluster.primary.id
#  node_count = 1
#
#  node_locations = [
#    var.location1
#  ]
#
#  management {
#    auto_repair  = true
#    auto_upgrade = true
#  }
#
#  autoscaling {
#    min_node_count = 0
#    max_node_count = 10
#  }
#
#  node_config {
#    preemptible  = true
#    machine_type = "e2-small"
#
#    labels = {
#      type = "spot"
#      location   = var.location1
#    }
#
#    taint {
#      key    = "instance_type"
#      value  = "spot"
#      effect = "NO_SCHEDULE"
#    }
#
#    service_account = google_service_account.kubernetes.email
#    oauth_scopes = [
#      "https://www.googleapis.com/auth/cloud-platform"
#    ]
#  }
#}
#
#resource "google_container_node_pool" "spot_2" {
#  name    = "spot-b"
#  location   = var.location2
#  cluster = google_container_cluster.primary.id
#  node_count = 1
#
#  node_locations = [
#    var.location2
#  ]
#  management {
#    auto_repair  = true
#    auto_upgrade = true
#  }
#
#  autoscaling {
#    min_node_count = 0
#    max_node_count = 10
#  }
#
#  node_config {
#    preemptible  = true
#    machine_type = "e2-small"
#
#    labels = {
#      type = "spot"
#      location   = var.location2
#    }
#
#    taint {
#      key    = "instance_type"
#      value  = "spot"
#      effect = "NO_SCHEDULE"
#    }
#
#    service_account = google_service_account.kubernetes.email
#    oauth_scopes = [
#      "https://www.googleapis.com/auth/cloud-platform"
#    ]
#  }
#}

#resource "google_container_node_pool" "spot_3" {
#  name    = "spot-c"
#  location   = var.location3
#  cluster = google_container_cluster.primary.id
#  node_count = 1
#
#  node_locations = [
#    var.location3
#  ]
#  management {
#    auto_repair  = true
#    auto_upgrade = true
#  }
#
#  autoscaling {
#    min_node_count = 0
#    max_node_count = 10
#  }
#
#  node_config {
#    preemptible  = true
#    machine_type = "e2-small"
#
#    labels = {
#      type = "spot"
#      location   = var.location3
#    }
#
#    taint {
#      key    = "instance_type"
#      value  = "spot"
#      effect = "NO_SCHEDULE"
#    }
#
#    service_account = google_service_account.kubernetes.email
#    oauth_scopes = [
#      "https://www.googleapis.com/auth/cloud-platform"
#    ]
#  }
#}