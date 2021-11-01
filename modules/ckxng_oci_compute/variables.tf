variable "compartment_ocid" {
  description = "The OCID of the compartment interfaces should be created in"
  type        = string
}

variable "subnet_ocid" {
  description = "The OCID of the subnet to attach interfaces to."
  type        = string
}

variable "availability_domain" {
  description = "The availability domain to create instances in"
  type        = string
  default     = "hoEM:PHX-AD-2"
}

variable "cluster_name" {
  description = "The cluster name which is used to create the instance labels (\"CLUSTERNAME-##\")"
  type        = string
  default     = "cluster"
}

variable "instance_count" {
  description = "How many instances to create"
  type        = number
  default     = 3
}

variable "image_source_ocid" {
  description = "The OCID of the image to deploy.  Defaults to Ubuntu 20.4"
  type        = string
  default     = "ocid1.image.oc1.phx.aaaaaaaa3nsfzlvkvrfug4xby77srfr43iinfkw3clur5izvlnqtxqdyj5sq" # Ubuntu 20.4
}

variable "memory_in_gbs" {
  description = "The amount of memory to assign to each instance (in GB)"
  type        = number
  default     = 6
}

variable "ocpus" {
  description = "The number of OCPUs to assign to each instance"
  type        = number
  default     = 1
}

variable "ssh_authorized_keys" {
  description = "A string containing one or more SSH public keys to be deployed to the main user of the system"
  type        = string
}

variable "shape" {
  description = "The shape of the instance to deploy"
  type        = string
  default     = "VM.Standard.A1.Flex"
}

variable "user_data" {
  description = "A user_data string to be passed to cloud_init"
  type        = string
  default     = null
}
