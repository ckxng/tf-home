provider "oci" {
  region       = var.oci_region_key
  tenancy_ocid = var.oci_tenancy_ocid
  user_ocid    = var.oci_user_ocid
  private_key  = var.oci_private_key
  fingerprint  = var.oci_key_fingerprint
}

resource "oci_identity_compartment" "compartment" {
  count       = var.oci_create_compartment ? 1 : 0
  name        = var.oci_compartment_name
  description = var.oci_compartment_description
}
