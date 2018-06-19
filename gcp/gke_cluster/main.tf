resource "google_container_node_pool" "np" {
  name       = "k8s-node-pool"
  zone       = "${var.zone_gke}"
  cluster    = "${google_container_cluster.primary.name}"
  node_count = 2

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = true
    machine_type = "${var.machinetype_gke}"
    disk_size_gb = "${var.disk_size_gb}"

    oauth_scopes = [
      "compute-rw",
      "storage-ro",
      "logging-write",
      "monitoring",
    ]
  }
}

resource "google_container_cluster" "primary" {
  name = "${var.name_gke}"
  zone = "${var.zone_gke}"

  lifecycle {
    ignore_changes = ["node_pool"]
  }

  node_pool {
    name = "default-pool"
  }
}
