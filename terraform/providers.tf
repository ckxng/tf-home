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

# Configure the Azure provider
# Azure CLI is recommended locally
# Service Principal auth is recommended in automation:
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret
# $ export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
# $ export ARM_CLIENT_SECRET="00000000-0000-0000-0000-000000000000"
# $ export ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
# $ export ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
#provider "azurerm" {
#  features {}
#}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
# Configure the AWS Provider
#provider "aws" {
#  region     = var.aws_region
#  access_key = var.aws_access_key
#  secret_key = var.aws_secret_key
#}
