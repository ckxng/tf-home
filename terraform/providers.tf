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

