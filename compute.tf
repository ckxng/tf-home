resource "oci_core_instance" "cluster_instances" {
  count = var.instance_count

  agent_config {
    is_management_disabled = "false"
    is_monitoring_disabled = "false"
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }
  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }
  availability_domain = var.availability_domain
  compartment_id      = var.create_compartment ? oci_identity_compartment.compartment[0].id : var.compartment_ocid
  create_vnic_details {
    display_name              = format("%s%02d", var.cluster_node_name_prefix, count.index)
    hostname_label            = format("%s%02d", var.cluster_node_name_prefix, count.index)
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = var.create_subnet ? oci_core_subnet.cluster_subnet[0].id : var.subnet_ocid
  }
  display_name        = format("%s%02d", var.cluster_node_name_prefix, count.index)
  instance_options {
    are_legacy_imds_endpoints_disabled = "false"
  }
  metadata            = {
    "ssh_authorized_keys" = var.ssh_authorized_keys
  }
  shape               = "VM.Standard.A1.Flex"
  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
  source_details {
    # Ubuntu 20.04
    source_id   = var.image_source_ocid
    source_type = "image"
  }

  depends_on = [oci_core_subnet.cluster_subnet]
}

data "oci_core_vnic_attachments" "cluster_vnics" {
  compartment_id = var.create_compartment ? oci_identity_compartment.compartment[0].id : var.compartment_ocid

  depends_on = [oci_core_instance.cluster_instances]
}

resource "oci_core_ipv6" "ipv6_addresses" {
  count = length(oci_core_instance.cluster_instances)

  vnic_id = [for vnic in data.oci_core_vnic_attachments.cluster_vnics.vnic_attachments : vnic.vnic_id if vnic.instance_id == oci_core_instance.cluster_instances[count.index].id][0]

  depends_on = [data.oci_core_vnic_attachments.cluster_vnics]
}
