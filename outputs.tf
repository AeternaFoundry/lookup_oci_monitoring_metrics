output "monitoring_metrics_lookup_id" {
  description = "Map of id values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_metrics_lookup_compartment_id" {
  description = "Map of compartment_id values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "monitoring_metrics_lookup_compartment_id_in_subtree" {
  description = "Map of compartment_id_in_subtree values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no compartment_id_in_subtree are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.compartment_id_in_subtree if v.compartment_id_in_subtree != null }
}
output "monitoring_metrics_lookup_dimension_filters" {
  description = "Map of dimension_filters values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no dimension_filters are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.dimension_filters if v.dimension_filters != null && length(v.dimension_filters) > 0 }
}
output "monitoring_metrics_lookup_filter" {
  description = "Map of filter values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "monitoring_metrics_lookup_group_by" {
  description = "Map of group_by values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no group_by are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.group_by if v.group_by != null && length(v.group_by) > 0 }
}
output "monitoring_metrics_lookup_metrics" {
  description = "Map of metrics values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no metrics are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.metrics if v.metrics != null && length(v.metrics) > 0 }
}
output "monitoring_metrics_lookup_name" {
  description = "Map of name values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitoring_metrics_lookup_namespace" {
  description = "Map of namespace values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "monitoring_metrics_lookup_resource_group" {
  description = "Map of resource_group values across all monitoring_metrics_lookup, keyed the same as var.monitoring_metrics_lookup except keys with no resource_group are omitted"
  value       = { for k, v in data.oci_monitoring_metrics.monitoring_metrics_lookup : k => v.resource_group if v.resource_group != null && length(v.resource_group) > 0 }
}

