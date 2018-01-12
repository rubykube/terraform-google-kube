resource "random_id" "name" {
  byte_length = 2
}

module "mysql-db" {
  source           = "./modules/cloud-sql"
  project          = "${var.project}"
  region           = "${var.region}"
  name             = "master-${random_id.name.hex}"
  tier             = "${var.cloudsql_tier}"
  database_version = "MYSQL_5_7"
}

module "k8s-cluster" {
  source           = "./modules/k8s-cluster"
  region           = "${var.region}"
  zone             = "${var.zone}"
  cluster_name     = "${var.cluster_name}"
  machine_type     = "${var.node_type}"
  num_nodes        = "${var.num_nodes}"
}
