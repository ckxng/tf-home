variable "tenancy_ocid" {
  type = string
}

variable "user_ocid" {
  type = string
}

variable "key_fingerprint" {
  type = string
}

variable "private_key" {
  type = string
}

variable "region_key" {
  type    = string
  default = "phx"
}

variable "create_compartment" {
  type    = bool
  default = true
}

variable "compartment_ocid" {
  description = "The OCID of the compartment.  Ignored if create_compartment is true."
  type        = string
}

variable "compartment_name" {
  type    = string
  default = "tfdeploy"
}

variable "compartment_description" {
  type    = string
  default = "default description"
}
