# Create the network in the compartment specified
# https://github.com/ckxng/tf-home/tree/main/modules/ckxng_oci_network
module "ckxng_oci_network" {
  source = "../modules/ckxng_oci_network"

  compartment_ocid = var.oci_create_compartment ? oci_identity_compartment.compartment[0].id : var.oci_compartment_ocid
}

# Create one or more clusters of instances in the subnet created above
# https://github.com/ckxng/tf-home/tree/main/modules/ckxng_oci_compute
module "ckxng_oci_compute" {
  count  = length(var.oci_compute_pools)
  source = "../modules/ckxng_oci_compute"

  compartment_ocid    = var.oci_create_compartment ? oci_identity_compartment.compartment[0].id : var.oci_compartment_ocid
  subnet_ocid         = module.ckxng_oci_network.subnet_ocid
  ssh_authorized_keys = var.ssh_authorized_keys
  shape               = var.oci_compute_pools[count.index].shape
  instance_count      = var.oci_compute_pools[count.index].instance_count
  cluster_name        = var.oci_compute_pools[count.index].cluster_name
  ocpus               = var.oci_compute_pools[count.index].ocpus
  memory_in_gbs       = var.oci_compute_pools[count.index].memory_in_gbs
  user_data           = var.oci_compute_pools[count.index].user_data
}
