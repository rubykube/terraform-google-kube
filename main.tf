
resource "random_id" "name" {
  byte_length = 2
}

module "mysql-db" {
  source           = "./modules/cloud-sql"
  project          = "${var.project}"
  region           = "${var.region}"
  name             = "master-${random_id.name.hex}"
  tier             = "db-n1-standard-1"
  database_version = "MYSQL_5_7"
}

module "k8s-cluster" {
  source           = "./modules/k8s-cluster"
  region           = "${var.region}"
  zone             = "${var.zone}"
  cluster_name     = "production-${random_id.name.hex}"
  machine_type     = "n1-standard-2"
  num_nodes        = 3
}
