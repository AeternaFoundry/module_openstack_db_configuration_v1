variable "db_configuration_v1s" {
  description = <<EOT
Map of db_configuration_v1s, attributes below
Required:
    - description
    - name
    - datastore (block):
        - type (required)
        - version (required)
Optional:
    - region
    - configuration (block):
        - name (required)
        - string_type (optional)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    description = string
    name        = string
    region      = optional(string)
    datastore = object({
      type    = string
      version = string
    })
    configuration = optional(list(object({
      name        = string
      string_type = optional(bool)
      value       = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

