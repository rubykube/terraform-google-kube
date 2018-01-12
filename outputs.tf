output cluster_name {
  description = "Kubernetes cluster name"
  value       = "${var.cluster_name}"
}

output zone {
  description = "GCP zone"
  value       = "${var.zone}"
}

output project {
  description = "GCP project"
  value       = "${var.project}"
}

output instance_connection_name {
  description = "Cloud SQL instance connection name"
  value       = "${module.mysql-db.instance_connection_name}"
}

output generated_peatio_user_password {
  description = "Generated Peatio user password"
  value       = "${module.mysql-db.generated_peatio_user_password}"
}
