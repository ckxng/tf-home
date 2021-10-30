provider "oci" {
  auth = "InstancePrincipal"
  region = var.region
}

resource "oci_core_instance" "generated_oci_core_instance" {
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
  compartment_id      = vars.tenancy_OCID
  create_vnic_details {
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = var.subnet_id
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
    source_id   = var.image_source_OCID
    source_type = "image"
  }
}