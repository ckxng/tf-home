resource "oci_core_vcn" "cluster_vcn" {
  count = var.create_vcn ? 1 : 0

  compartment_id = var.create_compartment ? oci_identity_compartment.compartment[0].id : var.compartment_ocid
  cidr_blocks    = var.vcn_cidr_blocks
  dns_label      = var.vcn_dns_label
  display_name   = var.vcn_dns_label
  is_ipv6enabled = var.vcn_is_ipv6enabled

  depends_on = [oci_identity_compartment.compartment]
}

resource "oci_core_subnet" "cluster_subnet" {
  count = var.create_subnet ? 1 : 0

  compartment_id = var.create_compartment ? oci_identity_compartment.compartment[0].id : var.compartment_ocid
  cidr_block     = var.subnet_cidr_block
  dns_label      = var.subnet_dns_label

  vcn_id     = var.create_vcn ? oci_core_vcn.cluster_vcn[0].id : var.vcn_ocid
  depends_on = [oci_core_vcn.cluster_vcn]
}
