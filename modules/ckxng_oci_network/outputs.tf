output "vcn_ocid" {
  description = "The OCID of the vcn that was created (or was passed in)"
  value       = var.create_vcn ? oci_core_vcn.cluster_vcn[0].id : var.vcn_ocid
}

output "subnet_ocid" {
  description = "The OCID of the subnet that was created (or was passed in)"
  value       = var.create_subnet ? oci_core_subnet.cluster_subnet[0].id : var.subnet_ocid
}
