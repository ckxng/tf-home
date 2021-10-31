provider "oci" {
  region       = var.region_key
  tenancy_ocid = var.tenancy_ocid
  user_ocid    = var.user_ocid
  private_key  = var.private_key
  fingerprint  = var.key_fingerprint
}

resource "oci_identity_compartment" "compartment" {
  count       = var.create_compartment ? 1 : 0
  name        = var.compartment_name
  description = var.compartment_description
}
