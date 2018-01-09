resource "google_container_cluster" "primary" {
  name               = "${var.cluster_name}"
  zone               = "${var.zone}"
  initial_node_count = "${var.num_nodes}"

  node_config {
    machine_type = "${var.machine_type}"
    disk_size_gb = "${var.disk_size_gb}"
    local_ssd_count = 1
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      cluster = "primary"
    }

    tags = ["production", "kubernetes"]
  }
}
