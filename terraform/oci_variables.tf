variable "oci_tenancy_ocid" {
  type = string
}

variable "oci_user_ocid" {
  type = string
}

variable "oci_key_fingerprint" {
  type = string
}

variable "oci_private_key" {
  type = string
}

variable "oci_region_key" {
  type    = string
  default = "phx"
}

variable "oci_create_compartment" {
  type    = bool
  default = true
}

variable "oci_compartment_ocid" {
  description = "The OCID of the compartment to attach resources to.  Ignored if oci_create_compartment is true."
  type        = string
  default     = ""
}

variable "oci_compartment_name" {
  type    = string
  default = "tfdeploy"
}

variable "oci_compartment_description" {
  type    = string
  default = "default description"
}

variable "ssh_authorized_keys" {
  type = string
}

variable "oci_compute_pools" {
  type    = list(object({
    shape          = string
    instance_count = number
    cluster_name   = string
    memory_in_gbs  = string
    ocpus          = string
  }))
  default = [
    {
      shape          = "VM.Standard.A1.Flex"
      instance_count = 3
      cluster_name   = "cluster-a1"
      memory_in_gbs  = 6
      ocpus          = 1
    }
  ]
}
