output instance_name {
  description = "The kubernetes cluster endpoint"
  value = "${google_container_cluster.primary.endpoint}"
}

output cluster_name {
  description = "The k8s cluster name"
  value = "${var.cluster_name}"
}

output project {
  description = "The GCloud project where k8s is installed"
  value = "${google_container_cluster.primary.project}"
}

output zone {
  description = "The k8s cluster zone"
  value = "${var.zone}"
}
