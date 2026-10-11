variable "monitoring_metrics_lookup" {
  description = <<EOT
Map of monitoring_metrics_lookup, attributes below
Required:
    - compartment_id
Optional:
    - compartment_id_in_subtree
    - dimension_filters
    - group_by
    - name
    - namespace
    - resource_group
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    compartment_id_in_subtree = optional(bool)
    dimension_filters         = optional(map(string))
    group_by                  = optional(list(string))
    name                      = optional(string)
    namespace                 = optional(string)
    resource_group            = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

