provider "oci" {}

variable "instance_count" {
  type    = string
  default = 3
}

variable "memory_in_gbs" {
  type    = string
  default = "6"
}

variable "ocpus" {
  type    = string
  default = "1"
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
  availability_domain = "hoEM:PHX-AD-2"
  compartment_id      = "ocid1.tenancy.oc1..aaaaaaaaoam54rq55fzr2i3w2zxut7gr6ukjtgynme42untn7t6i2ca3kmna"
  create_vnic_details {
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = "ocid1.subnet.oc1.phx.aaaaaaaanlwk54ujrq6byvfiyvocqih4ub4xy2unlmmz35yqiy6zeh65rfhq"
  }
  display_name        = format("cluster-node-%d", count.index)
  instance_options {
    are_legacy_imds_endpoints_disabled = "false"
  }
  metadata            = {
    "ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAlAIKxHeuIMPSIXUAiEFHxhfHZBtWQndvilRJK4z+ZZZiLMU77FkIn57kG4wfs5d0oK35w1rj+KNCV0gI4MxlhCXwvPzNKuP/LEjnmY4HNfib02bEeumCTDLMcr1xzgYeS0ecw1Rs6aSjfGLDekIfZMliVCPD+L3WV/SpWv/fSN9bvYhcrjOeNAv/sEKQFWOdXOK7aPUy5gzYpVvRa/JwWntoDsOIIOx5ey5Cj/vzQQNJRcvTB0OhFZkPrQAdnswOkia9R01jTkVDLuYIsYS6/5reNmOY8ptMcxtcDsx9wpiPKHYSwqRLpJsvoYk4itZGuFZLNwX4TCI26vPE9ruWvw== thermalwagon"
  }
  shape               = "VM.Standard.A1.Flex"
  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
  source_details {
    # Ubuntu 20.04
    source_id   = "ocid1.image.oc1.phx.aaaaaaaa3nsfzlvkvrfug4xby77srfr43iinfkw3clur5izvlnqtxqdyj5sq"
    source_type = "image"
  }
}
