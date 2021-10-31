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
  type    = string
  default = ""
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

variable "oci_a1_instance_count" {
  type    = number
  default = 3
}

variable "oci_a1_memory_in_gbs" {
  type    = string
  default = "6"
}

variable "oci_a1_ocpus" {
  type    = string
  default = "1"
}