output "db_configuration_v1s_id" {
  description = "Map of id values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s except keys with no id are omitted"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "db_configuration_v1s_configuration" {
  description = "Map of configuration values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s except keys with no configuration are omitted"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "db_configuration_v1s_datastore" {
  description = "Map of datastore values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s except keys with no datastore are omitted"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => one(v.datastore) if v.datastore != null && length(v.datastore) > 0 }
}
output "db_configuration_v1s_description" {
  description = "Map of description values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s except keys with no description are omitted"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "db_configuration_v1s_name" {
  description = "Map of name values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s except keys with no name are omitted"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "db_configuration_v1s_region" {
  description = "Map of region values across all db_configuration_v1s, keyed the same as var.db_configuration_v1s except keys with no region are omitted"
  value       = { for k, v in openstack_db_configuration_v1.db_configuration_v1s : k => v.region if v.region != null && length(v.region) > 0 }
}

