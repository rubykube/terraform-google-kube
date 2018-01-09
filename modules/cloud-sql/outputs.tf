/*
 * Copyright 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output instance_name {
  description = "The name of the database instance"
  value       = "${google_sql_database_instance.master.name}"
}

output instance_address {
  description = "The IPv4 address of the master database instnace"
  value       = "${google_sql_database_instance.master.ip_address.0.ip_address}"
}

output instance_address_time_to_retire {
  description = "The time the master instance IP address will be reitred. RFC 3339 format."
  value       = "${google_sql_database_instance.master.ip_address.0.time_to_retire}"
}

output self_link {
  description = "Self link to the master instance"
  value       = "${google_sql_database_instance.master.self_link}"
}

output generated_root_user_password {
  description = "The auto generated root user password"
  value       = "${random_id.root-user-password.hex}"
  sensitive   = true
}

output generated_peatio_user_password {
  description = "The auto generated peatio user password"
  value       = "${random_id.peatio-user-password.hex}"
  sensitive   = true
}

output instance_connection_name {
  description = "The name of instance for cloudsql-proxy"
  value       = "${var.project}:${var.region}:${google_sql_database_instance.master.name}"
}
