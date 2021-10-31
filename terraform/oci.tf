module "ckxng_oci_network" {
  source = "../modules/ckxng_oci_network"

  compartment_ocid = var.oci_create_compartment ? oci_identity_compartment.compartment[0].id : var.oci_compartment_ocid
}

locals {
  compute_pools = [
    {
      shape                    = "VM.Standard.A1.Flex"
      instance_count           = var.oci_a1_instance_count
      cluster_node_name_prefix = "cluster-a1-node-"
      ocpus                    = var.oci_a1_ocpus
      memory_in_gbs            = var.oci_a1_memory_in_gbs
    }
  ]
}

module "ckxng_oci_compute" {
  count  = length(local.compute_pools)
  source = "../modules/ckxng_oci_compute"

  compartment_ocid         = var.oci_create_compartment ? oci_identity_compartment.compartment[0].id : var.oci_compartment_ocid
  subnet_ocid              = module.ckxng_oci_network.subnet_ocid
  ssh_authorized_keys      = var.ssh_authorized_keys
  shape                    = local.compute_pools[count.index].shape
  instance_count           = local.compute_pools[count.index].instance_count
  cluster_node_name_prefix = local.compute_pools[count.index].cluster_node_name_prefix
  ocpus                    = local.compute_pools[count.index].ocpus
  memory_in_gbs            = local.compute_pools[count.index].memory_in_gbs
}