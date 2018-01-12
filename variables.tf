variable "project" {
  type = "string"
}

variable "region" {
  type = "string"
  default = "europe-west1"
}

variable "zone" {
  type = "string"
  default = "europe-west1-b"
}

variable "num_nodes" {
  default = "3"
}

variable "node_type" {
  type = "string"
  default = "n1-standard-2"
}

variable cluster_name {
  type = "string"
  default = "dev"
}

variable cloudsql_tier {
  type = "string"
  default = "db-n1-standard-1"
}
