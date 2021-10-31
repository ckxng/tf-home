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
  compartment_id      = var.compartment_ocid
  create_vnic_details {
    display_name              = format("%s-%02d", var.cluster_name, count.index)
    hostname_label            = format("%s-%02d", var.cluster_name, count.index)
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = var.subnet_ocid
    freeform_tags             = {
      Cluster  = var.cluster_name
      Instance = format("%s-%02d", var.cluster_name, count.index)
    }
  }
  display_name        = format("%s-%02d", var.cluster_name, count.index)
  freeform_tags       = {
    Cluster  = var.cluster_name
    Instance = format("%s-%02d", var.cluster_name, count.index)
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = "false"
  }
  metadata            = {
    "ssh_authorized_keys" = var.ssh_authorized_keys
  }
  shape               = var.shape
  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
  source_details {
    # Ubuntu 20.04
    source_id   = var.image_source_ocid
    source_type = "image"
  }
}

data "oci_core_vnic_attachments" "cluster_vnics" {
  compartment_id = var.compartment_ocid

  depends_on = [oci_core_instance.cluster_instances]
}

resource "oci_core_ipv6" "ipv6_addresses" {
  count = length(oci_core_instance.cluster_instances)

  vnic_id = [for vnic in data.oci_core_vnic_attachments.cluster_vnics.vnic_attachments : vnic.vnic_id if vnic.instance_id == oci_core_instance.cluster_instances[count.index].id][0]

  depends_on = [data.oci_core_vnic_attachments.cluster_vnics]
}
