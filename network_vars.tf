variable "create_vcn" {
  type    = bool
  default = true
}

variable "vcn_ocid" {
  description = "The OCID of the vcn to attach subnets to.  Ignored if create_vcn is true."
  type        = string
  default     = ""
}

variable "vcn_dns_label" {
  type    = string
  default = "vcn"
}

variable "vcn_cidr_blocks" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "vcn_is_ipv6enabled" {
  type    = bool
  default = true
}

variable "create_subnet" {
  type    = bool
  default = true
}

variable "subnet_ocid" {
  description = "The OCID of the subnet to attach interfaces to.  Ignored if create_subnet is true."
  type        = string
  default     = ""
}

variable "subnet_dns_label" {
  type    = string
  default = "subnet"
}

variable "subnet_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}
