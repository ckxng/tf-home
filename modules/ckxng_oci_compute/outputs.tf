output "instance_ocids" {
  value = [for instance in oci_core_instance.cluster_instances : instance.id]
}
