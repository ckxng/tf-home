variable "oci_tenancy_ocid" {
  description = "OCID of your tenancy."
  type        = string
}

variable "oci_user_ocid" {
  description = "OCID of the user calling the API."
  type        = string
}

variable "oci_key_fingerprint" {
  description = "Fingerprint for the key pair being used."
  type        = string
}

variable "oci_private_key" {
  description = "The contents of the private key file."
  type        = string
}

variable "oci_region_key" {
  description = "An OCI region key.  (Three letters - \"phx\" not \"us-phoenix-1\")"
  type        = string
  default     = "phx"
}

variable "oci_create_compartment" {
  description = "Whether a compartment should be created for this deployment"
  type        = bool
  default     = true
}

variable "oci_compartment_ocid" {
  description = "The OCID of the compartment to attach resources to.  Ignored if oci_create_compartment is true."
  type        = string
  default     = null
}

variable "oci_compartment_name" {
  description = "The name of for the created compartment"
  type        = string
  default     = "tfdeploy"
}

variable "oci_compartment_description" {
  description = "The description for the created compartment"
  type        = string
  default     = "default description"
}

variable "oci_create_network" {
  description = "Whether a network should be created for this deployment"
  type        = bool
  default     = true
}

variable "oci_subnet_ocid" {
  description = "The OCID of the subnet to attach resources to.  Ignored if oci_create_network is true."
  type        = string
  default     = null
}

variable "oci_compute_pools" {
  description = "A list of objects representing clusters of instances to deploy"
  type        = list(object({
    shape          = string
    instance_count = number
    cluster_name   = string
    memory_in_gbs  = string
    ocpus          = string
    user_data      = string
  }))
  default     = [
    {
      shape          = "VM.Standard.A1.Flex"
      instance_count = 3
      cluster_name   = "cluster-a1"
      memory_in_gbs  = 6
      ocpus          = 1
      user_data      = null
    }
  ]
}
