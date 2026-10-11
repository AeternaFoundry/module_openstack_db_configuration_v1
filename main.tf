resource "openstack_db_configuration_v1" "db_configuration_v1s" {
  for_each = var.db_configuration_v1s

  description = each.value.description
  name        = each.value.name
  region      = each.value.region

  datastore {
    type    = each.value.datastore.type
    version = each.value.datastore.version
  }

  dynamic "configuration" {
    for_each = each.value.configuration != null ? each.value.configuration : []
    content {
      name        = configuration.value.name
      string_type = configuration.value.string_type
      value       = configuration.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

