# Configure the OCI provider
# See example.tfvars for an example of required variables
# https://registry.terraform.io/providers/hashicorp/oci/latest/docs
provider "oci" {
  region       = var.oci_region_key
  tenancy_ocid = var.oci_tenancy_ocid
  user_ocid    = var.oci_user_ocid
  private_key  = var.oci_private_key
  fingerprint  = var.oci_key_fingerprint
}

# Create a compartment specifically for this deployment
# https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment
resource "oci_identity_compartment" "compartment" {
  count       = var.oci_create_compartment ? 1 : 0
  name        = var.oci_compartment_name
  description = var.oci_compartment_description
}
