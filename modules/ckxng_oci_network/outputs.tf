output "vcn_ocid" {
  value = var.create_vcn ? oci_core_vcn.cluster_vcn[0].id : var.vcn_ocid
}

output "subnet_ocid" {
  value = var.create_subnet ? oci_core_subnet.cluster_subnet[0].id : var.subnet_ocid
}
