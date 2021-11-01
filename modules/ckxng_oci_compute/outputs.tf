output "instance_ocids" {
  description = "The list of instances created by this module"
  value       = [for instance in oci_core_instance.cluster_instances : instance.id]
}
