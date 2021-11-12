# Create a compartment specifically for this deployment
# https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment
resource "oci_identity_compartment" "compartment" {
  count       = var.oci_create_compartment ? 1 : 0
  name        = var.oci_compartment_name
  description = var.oci_compartment_description
}

# Create the network in the compartment specified
# https://github.com/ckxng/tf-home/tree/main/modules/ckxng_oci_network
module "ckxng_oci_network" {
  count = var.oci_create_network ? 1 : 0

  source = "../modules/ckxng_oci_network"

  compartment_ocid = var.oci_create_compartment ? oci_identity_compartment.compartment[0].id : var.oci_compartment_ocid
}

# Create one or more clusters of instances in the subnet created above
# https://github.com/ckxng/tf-home/tree/main/modules/ckxng_oci_compute
module "ckxng_oci_compute" {
  count  = length(var.oci_compute_pools)
  source = "../modules/ckxng_oci_compute"

  compartment_ocid    = var.oci_create_compartment ? oci_identity_compartment.compartment[0].id : var.oci_compartment_ocid
  subnet_ocid         = var.oci_create_network ? module.ckxng_oci_network[0].subnet_ocid : var.oci_subnet_ocid
  ssh_authorized_keys = var.ssh_authorized_keys
  shape               = var.oci_compute_pools[count.index].shape
  instance_count      = var.oci_compute_pools[count.index].instance_count
  cluster_name        = var.oci_compute_pools[count.index].cluster_name
  ocpus               = var.oci_compute_pools[count.index].ocpus
  memory_in_gbs       = var.oci_compute_pools[count.index].memory_in_gbs
  user_data           = var.oci_compute_pools[count.index].user_data
}
