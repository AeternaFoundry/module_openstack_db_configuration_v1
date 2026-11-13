output "db_configuration_v1s_id" {
  description = "Map of id values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.id }
}
output "db_configuration_v1s_configuration" {
  description = "Map of configuration values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.configuration }
}
output "db_configuration_v1s_datastore" {
  description = "Map of datastore values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => one(v.datastore) }
}
output "db_configuration_v1s_description" {
  description = "Map of description values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.description }
}
output "db_configuration_v1s_name" {
  description = "Map of name values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.name }
}
output "db_configuration_v1s_region" {
  description = "Map of region values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.region }
}

