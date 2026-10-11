data "oci_monitoring_metrics" "monitoring_metrics_lookup" {
  for_each = var.monitoring_metrics_lookup

  compartment_id            = each.value.compartment_id
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  dimension_filters         = each.value.dimension_filters
  group_by                  = each.value.group_by
  name                      = each.value.name
  namespace                 = each.value.namespace
  resource_group            = each.value.resource_group

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

